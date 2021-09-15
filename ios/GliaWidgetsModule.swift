import Foundation
import SalemoveSDK
import GliaWidgets

@objc(GliaWidgetsModule)
class GliaWidgetsModule: NSObject {

    @objc static func requiresMainQueueSetup() -> Bool {
        return true
    }

    @objc
    func configure(
        appToken: NSString,
        apiToken: NSString,
        siteId: NSString,
        queueId: NSString
    ) {

        let visitorContext = VisitorContext(
            type: .page,
            url: "http://www.glia.com"
        )

        let configuration = Configuration(
            appToken: String(appToken),
            apiToken: String(apiToken),
            environment: .usa,
            site: String(siteId)
        )
        startEngagement = { kind in

            DispatchQueue.main.async {
                do {
                    try Glia.sharedInstance.start(
                        kind,
                        configuration: configuration,
                        queueID: String(queueId),
                        visitorContext: visitorContext
                    )
                } catch {
                    print("Failed to configure Glia: \(error.localizedDescription)")
                }
            }

        }
    }

    @objc
    func startChat() {
        startEngagement?(.chat)
    }

    @objc
    func startAudioCall() {
        startEngagement?(.audioCall)
    }

    @objc
    func startVideoCall() {
        startEngagement?(.videoCall)
    }

    // MARK: - Private

    private var startEngagement: ((GliaWidgets.EngagementKind) -> Void)?
}

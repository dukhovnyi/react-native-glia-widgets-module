import { NativeModules } from 'react-native';

type GliaWidgetsModuleType = {
  multiply(a: number, b: number): Promise<number>;
  configure(
    appToken: string,
    apiToken: string,
    siteId: string,
    queueId: string
  ): void;
  startChat(): void;
  startAudioCall(): void;
  startVideoCall(): void;
};

const { GliaWidgetsModule } = NativeModules;

export default GliaWidgetsModule as GliaWidgetsModuleType;

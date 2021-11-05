.class Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;
.super Ljava/lang/Object;
.source "Hw2CompatUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertPhraseRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .locals 2
    .param p0, "event"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    .line 53
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;-><init>()V

    .line 55
    .local v0, "event_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 56
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 57
    return-object v0
.end method

.method static convertPhraseSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    .locals 2
    .param p0, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    .line 62
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 64
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 65
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    .line 66
    return-object v0
.end method

.method static convertProperties_2_0_to_2_3(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 1
    .param p0, "properties"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 85
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/Properties;-><init>()V

    .line 87
    .local v0, "properties_2_3":Landroid/hardware/soundtrigger/V2_3/Properties;
    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 88
    return-object v0
.end method

.method static convertRecognitionConfig_2_3_to_2_0(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    .locals 2
    .param p0, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    .line 76
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 79
    .local v0, "config_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 80
    return-object v0
.end method

.method static convertRecognitionConfig_2_3_to_2_1(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    .locals 1
    .param p0, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    .line 71
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    return-object v0
.end method

.method static convertRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    .locals 3
    .param p0, "event"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 40
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 42
    .local v0, "event_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 43
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    const-string v2, "SoundTrigger RecognitionEvent"

    invoke-static {v1, v2}, Landroid/os/HidlMemoryUtil;->byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    .line 46
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 47
    return-object v0
.end method

.method static convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    .locals 2
    .param p0, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 32
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 34
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 35
    return-object v0
.end method

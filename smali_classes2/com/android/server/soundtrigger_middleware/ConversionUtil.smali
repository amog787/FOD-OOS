.class Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aidl2hidlConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    .locals 2
    .param p0, "aidlLevel"    # Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    .line 261
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    .line 263
    .local v0, "hidlLevel":Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    iget v1, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 264
    iget v1, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 265
    return-object v0
.end method

.method static aidl2hidlModelParameter(I)I
    .locals 1
    .param p0, "aidlParam"    # I

    .line 394
    if-eqz p0, :cond_0

    .line 399
    const/4 v0, -0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static aidl2hidlPhrase(Landroid/media/soundtrigger_middleware/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    .locals 7
    .param p0, "aidlPhrase"    # Landroid/media/soundtrigger_middleware/Phrase;

    .line 145
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    .line 146
    .local v0, "hidlPhrase":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    iget v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 147
    iget v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 148
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->users:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 149
    .local v4, "aidlUser":I
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v4    # "aidlUser":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->locale:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->text:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 153
    return-object v0
.end method

.method static aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    .locals 7
    .param p0, "aidlExtra"    # Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    .line 232
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 234
    .local v0, "hidlExtra":Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 235
    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 236
    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 237
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 238
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 239
    .local v4, "aidlLevel":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v4    # "aidlLevel":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-object v0
.end method

.method static aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .locals 7
    .param p0, "aidlModel"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    .line 207
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 208
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger_middleware/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 209
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 210
    .local v4, "aidlPhrase":Landroid/media/soundtrigger_middleware/Phrase;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhrase(Landroid/media/soundtrigger_middleware/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v4    # "aidlPhrase":Landroid/media/soundtrigger_middleware/Phrase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-object v0
.end method

.method static aidl2hidlRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .locals 7
    .param p0, "aidlConfig"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;

    .line 217
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    .line 219
    .local v0, "hidlConfig":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-boolean v2, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->captureRequested:Z

    iput-boolean v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 220
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 221
    .local v4, "aidlPhraseExtra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v4    # "aidlPhraseExtra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->data:[B

    const-string v3, "SoundTrigger RecognitionConfig"

    invoke-static {v2, v3}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    .line 225
    iget v1, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->audioCapabilities:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    .line 226
    return-object v0
.end method

.method static aidl2hidlRecognitionModes(I)I
    .locals 2
    .param p0, "aidlModes"    # I

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "hidlModes":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 160
    or-int/lit8 v0, v0, 0x1

    .line 162
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 163
    or-int/lit8 v0, v0, 0x2

    .line 165
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 166
    or-int/lit8 v0, v0, 0x4

    .line 168
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 169
    or-int/lit8 v0, v0, 0x8

    .line 171
    :cond_3
    return v0
.end method

.method static aidl2hidlSoundModel(Landroid/media/soundtrigger_middleware/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .locals 3
    .param p0, "aidlModel"    # Landroid/media/soundtrigger_middleware/SoundModel;

    .line 195
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 196
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModelType(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 197
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 198
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 199
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/SoundModel;->data:Ljava/io/FileDescriptor;

    iget v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->dataSize:I

    invoke-static {v1, v2}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    .line 201
    return-object v0
.end method

.method static aidl2hidlSoundModelType(I)I
    .locals 3
    .param p0, "aidlType"    # I

    .line 122
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 124
    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .locals 12
    .param p0, "aidlUuid"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 104
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 108
    .local v1, "hidlUuid":Landroid/hardware/audio/common/V2_0/Uuid;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 109
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 110
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v1, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 111
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v1, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 112
    const/4 v7, 0x6

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 113
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    const/4 v2, 0x7

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v3

    const/16 v2, 0x8

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v5

    const/16 v2, 0x9

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    const/16 v2, 0xa

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v10

    iput-object v8, v1, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 118
    return-object v1

    .line 105
    .end local v1    # "hidlUuid":Landroid/hardware/audio/common/V2_0/Uuid;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal format for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static hidl2aidlAudioCapabilities(I)I
    .locals 2
    .param p0, "hidlCapabilities"    # I

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "aidlCapabilities":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 407
    or-int/lit8 v0, v0, 0x1

    .line 409
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 411
    or-int/lit8 v0, v0, 0x2

    .line 413
    :cond_1
    return v0
.end method

.method static hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;)Landroid/media/audio/common/AudioConfig;
    .locals 3
    .param p0, "hidlConfig"    # Landroid/hardware/audio/common/V2_0/AudioConfig;

    .line 350
    new-instance v0, Landroid/media/audio/common/AudioConfig;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfig;-><init>()V

    .line 353
    .local v0, "aidlConfig":Landroid/media/audio/common/AudioConfig;
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->sampleRateHz:I

    .line 354
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->channelMask:I

    .line 355
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->format:I

    .line 356
    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    .line 357
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioConfig;->frameCount:J

    .line 358
    return-object v0
.end method

.method static hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    .locals 2
    .param p0, "hidlLevel"    # Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 271
    new-instance v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/ConfidenceLevel;-><init>()V

    .line 272
    .local v0, "aidlLevel":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    .line 273
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    .line 274
    return-object v0
.end method

.method static hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 2
    .param p0, "hidlRange"    # Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 384
    if-nez p0, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    new-instance v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/ModelParameterRange;-><init>()V

    .line 388
    .local v0, "aidlRange":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->minInclusive:I

    .line 389
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->maxInclusive:I

    .line 390
    return-object v0
.end method

.method static hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;
    .locals 3
    .param p0, "hidlInfo"    # Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 364
    new-instance v0, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v0}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    .line 367
    .local v0, "aidlInfo":Landroid/media/audio/common/AudioOffloadInfo;
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->sampleRateHz:I

    .line 368
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->channelMask:I

    .line 369
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->format:I

    .line 370
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    .line 371
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    .line 372
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->durationMicroseconds:J

    .line 373
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    .line 374
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    .line 375
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    .line 376
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bufferSize:I

    .line 377
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    .line 378
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 4
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    .line 324
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;-><init>()V

    .line 325
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    .line 326
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 328
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 328
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 4
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    .line 337
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;-><init>()V

    .line 338
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    .line 339
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 341
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 341
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    .locals 4
    .param p0, "hidlExtra"    # Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 247
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;-><init>()V

    .line 248
    .local v0, "aidlExtra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    .line 249
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    .line 250
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    .line 251
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 253
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 2
    .param p0, "hidlProperties"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 56
    new-instance v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;-><init>()V

    .line 57
    .local v0, "aidlProperties":Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->implementor:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->description:Ljava/lang/String;

    .line 59
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->version:I

    .line 60
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->uuid:Ljava/lang/String;

    .line 61
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxSoundModels:I

    .line 62
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxKeyPhrases:I

    .line 63
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxUsers:I

    .line 64
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 65
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->recognitionModes:I

    .line 66
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->captureTransition:Z

    .line 67
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxBufferMs:I

    .line 68
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    .line 69
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->triggerInEvent:Z

    .line 70
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->powerConsumptionMw:I

    .line 71
    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 2
    .param p0, "hidlProperties"    # Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 76
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v0

    .line 77
    .local v0, "aidlProperties":Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->supportedModelArch:Ljava/lang/String;

    .line 78
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    .line 79
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->audioCapabilities:I

    .line 80
    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 4
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 295
    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEvent;-><init>()V

    .line 296
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/RecognitionEvent;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionStatus(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    .line 297
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlSoundModelType(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    .line 298
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    .line 300
    const/4 v1, -0x1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    .line 301
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    .line 302
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    .line 303
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    .line 304
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;)Landroid/media/audio/common/AudioConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 305
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 307
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 2
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 315
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v0

    .line 317
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/RecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    .line 318
    return-object v0
.end method

.method static hidl2aidlRecognitionModes(I)I
    .locals 2
    .param p0, "hidlModes"    # I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "aidlModes":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 177
    or-int/lit8 v0, v0, 0x1

    .line 179
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 181
    or-int/lit8 v0, v0, 0x2

    .line 183
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 185
    or-int/lit8 v0, v0, 0x4

    .line 187
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 188
    or-int/lit8 v0, v0, 0x8

    .line 190
    :cond_3
    return v0
.end method

.method static hidl2aidlRecognitionStatus(I)I
    .locals 3
    .param p0, "hidlStatus"    # I

    .line 278
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 286
    return v0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown recognition status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    return v0

    .line 282
    :cond_2
    return v0

    .line 280
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static hidl2aidlSoundModelType(I)I
    .locals 3
    .param p0, "hidlType"    # I

    .line 133
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 135
    return v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;
    .locals 7
    .param p0, "hidlUuid"    # Landroid/hardware/audio/common/V2_0/Uuid;

    .line 85
    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 90
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 91
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 92
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 93
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    .line 94
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v5

    .line 95
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v6

    .line 96
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 97
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    .line 98
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 88
    const-string v1, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UUID.node must be of length 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

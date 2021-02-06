.class public Lcom/android/server/soundtrigger_middleware/ValidationUtil;
.super Ljava/lang/Object;
.source "ValidationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validateGenericModel(Landroid/media/soundtrigger_middleware/SoundModel;)V
    .locals 1
    .param p0, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;

    .line 55
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V

    .line 56
    return-void
.end method

.method static validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V
    .locals 2
    .param p0, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;
    .param p1, "expectedType"    # I

    .line 59
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    if-ne v0, p1, :cond_0

    .line 63
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->data:Ljava/io/FileDescriptor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validateModelParameter(I)V
    .locals 2
    .param p0, "modelParam"    # I

    .line 110
    if-nez p0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid model parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validatePhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)V
    .locals 5
    .param p0, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    .line 69
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V

    .line 71
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 73
    .local v3, "phrase":Landroid/media/soundtrigger_middleware/Phrase;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->recognitionModes:I

    and-int/lit8 v4, v4, -0x10

    if-nez v4, :cond_0

    .line 79
    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->users:[I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->locale:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->text:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v3    # "phrase":Landroid/media/soundtrigger_middleware/Phrase;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .restart local v3    # "phrase":Landroid/media/soundtrigger_middleware/Phrase;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    .end local v3    # "phrase":Landroid/media/soundtrigger_middleware/Phrase;
    :cond_1
    return-void
.end method

.method static validateRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 12
    .param p0, "config"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;

    .line 86
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 89
    .local v4, "extra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    and-int/lit8 v5, v5, -0x10

    if-nez v5, :cond_3

    .line 95
    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    const-string v6, "Invalid confidenceLevel"

    if-ltz v5, :cond_2

    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    const/16 v7, 0x64

    if-gt v5, v7, :cond_2

    .line 98
    iget-object v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v5, v9

    .line 100
    .local v10, "level":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget v11, v10, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    if-ltz v11, :cond_0

    iget v11, v10, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    if-gt v11, v7, :cond_0

    .line 99
    .end local v10    # "level":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    .restart local v10    # "level":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .end local v4    # "extra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    .end local v10    # "level":Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .restart local v4    # "extra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v4    # "extra":Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    :cond_4
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method static validateUuid(Ljava/lang/String;)V
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    return-void

    .line 49
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

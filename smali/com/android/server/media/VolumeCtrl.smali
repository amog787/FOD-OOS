.class public Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field private static final ADJUST_LOWER:Ljava/lang/String; = "lower"

.field private static final ADJUST_RAISE:Ljava/lang/String; = "raise"

.field private static final ADJUST_SAME:Ljava/lang/String; = "same"

.field static final LOG_OK:Ljava/lang/String; = "[ok]"

.field static final LOG_V:Ljava/lang/String; = "[v]"

.field static final LOG_W:Ljava/lang/String; = "[w]"

.field private static final TAG:Ljava/lang/String; = "VolumeCtrl"

.field public static final USAGE:Ljava/lang/String;

.field private static final VOLUME_CONTROL_MODE_ADJUST:I = 0x2

.field private static final VOLUME_CONTROL_MODE_SET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .locals 16
    .param p0, "cmd"    # Lcom/android/server/media/MediaShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 66
    .local v1, "stream":I
    const/4 v2, 0x5

    .line 67
    .local v2, "volIndex":I
    const/4 v3, 0x0

    .line 68
    .local v3, "mode":I
    const/4 v4, 0x1

    .line 69
    .local v4, "adjDir":I
    const/4 v5, 0x0

    .line 70
    .local v5, "showUi":Z
    const/4 v6, 0x0

    .line 75
    .local v6, "doGet":Z
    const/4 v7, 0x0

    .line 76
    .local v7, "adjustment":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "option":Ljava/lang/String;
    const/4 v12, 0x4

    const/4 v13, 0x3

    const-string v14, "[v]"

    const/4 v15, 0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_6

    .line 77
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "--stream"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v11, v10

    goto :goto_2

    :sswitch_1
    const-string v8, "--show"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "--set"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v11, v13

    goto :goto_2

    :sswitch_3
    const-string v8, "--get"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v11, v15

    goto :goto_2

    :sswitch_4
    const-string v8, "--adj"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v11, v12

    goto :goto_2

    :goto_1
    const/4 v11, -0x1

    :goto_2
    if-eqz v11, :cond_5

    if-eq v11, v15, :cond_4

    if-eq v11, v10, :cond_3

    if-eq v11, v13, :cond_2

    if-ne v11, v12, :cond_1

    .line 95
    const/4 v3, 0x2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 97
    const-string/jumbo v8, "will adjust volume"

    invoke-static {v14, v8}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_3

    .line 100
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 90
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 91
    const/4 v3, 0x1

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will set volume to index="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will control stream="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_3

    .line 82
    :cond_4
    const/4 v6, 0x1

    .line 83
    const-string/jumbo v8, "will get volume"

    invoke-static {v14, v8}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_3

    .line 79
    :cond_5
    const/4 v5, 0x1

    .line 80
    nop

    .line 100
    :goto_3
    goto/16 :goto_0

    .line 106
    :cond_6
    if-ne v3, v10, :cond_f

    .line 107
    if-nez v7, :cond_7

    .line 108
    const-string v8, "Error: no valid volume adjustment (null)"

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 109
    return-void

    .line 111
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v13, 0x35c066

    const-string/jumbo v11, "raise"

    const-string/jumbo v12, "lower"

    const-string/jumbo v10, "same"

    if-eq v8, v13, :cond_b

    const v13, 0x6262b01

    if-eq v8, v13, :cond_a

    const v13, 0x67427ec

    if-eq v8, v13, :cond_9

    :cond_8
    goto :goto_4

    :cond_9
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    goto :goto_5

    :cond_b
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v15

    goto :goto_5

    :goto_4
    const/4 v8, -0x1

    :goto_5
    if-eqz v8, :cond_e

    if-eq v8, v15, :cond_d

    const/4 v13, 0x2

    if-eq v8, v13, :cond_c

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: no valid volume adjustment, was "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", expected "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "|"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 119
    return-void

    .line 114
    :cond_c
    const/4 v4, -0x1

    goto :goto_6

    .line 113
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .line 112
    :cond_e
    const/4 v4, 0x1

    .line 125
    :cond_f
    :goto_6
    const-string v8, "Connecting to AudioService"

    invoke-static {v14, v8}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v8, "audio"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v8

    .line 128
    .local v8, "audioService":Landroid/media/IAudioService;
    if-eqz v8, :cond_15

    .line 134
    if-ne v3, v15, :cond_11

    .line 135
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v10

    if-gt v2, v10, :cond_10

    .line 136
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v10

    if-ge v2, v10, :cond_11

    .line 137
    :cond_10
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v15

    .line 139
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 140
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 137
    const-string v11, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 141
    return-void

    .line 147
    :cond_11
    move v10, v5

    .line 148
    .local v10, "flag":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, "pack":Ljava/lang/String;
    if-ne v3, v15, :cond_12

    .line 150
    invoke-interface {v8, v1, v2, v10, v11}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_7

    .line 151
    :cond_12
    const/4 v12, 0x2

    if-ne v3, v12, :cond_13

    .line 152
    invoke-interface {v8, v1, v4, v10, v11}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 154
    :cond_13
    :goto_7
    if-eqz v6, :cond_14

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "volume is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " in range ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 155
    invoke-static {v14, v12}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_14
    return-void

    .line 129
    .end local v10    # "flag":I
    .end local v11    # "pack":Ljava/lang/String;
    :cond_15
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error type 2"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    new-instance v10, Landroid/util/AndroidException;

    const-string v11, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v10, v11}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_data_0
    .sparse-switch
        0x2900f07 -> :sswitch_4
        0x29025b6 -> :sswitch_3
        0x29052c2 -> :sswitch_2
        0x4f7a109d -> :sswitch_1
        0x59e29d20 -> :sswitch_0
    .end sparse-switch
.end method

.method static streamName(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .line 174
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "invalid stream"

    return-object v1
.end method

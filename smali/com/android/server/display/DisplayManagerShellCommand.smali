.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/display/DisplayManagerService;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 36
    return-void
.end method

.method private resetBrightnessConfiguration()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfiguration()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method private setAmbientColorTemperatureOverride()I
    .locals 5

    .line 143
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "cctText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no cct specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    return v1

    .line 150
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v1, "cct":F
    nop

    .line 155
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->setAmbientColorTemperatureOverride(F)V

    .line 156
    const/4 v2, 0x0

    return v2

    .line 151
    .end local v1    # "cct":F
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: cct should be a number"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    return v1
.end method

.method private setAutoBrightnessLoggingEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .line 133
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setAutoBrightnessLoggingEnabled(Z)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .locals 8

    .line 97
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "brightnessText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no brightness specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 104
    .local v2, "brightness":F
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 106
    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 107
    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, "context":Landroid/content/Context;
    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v4, "Permission required to set the display\'s brightness"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 118
    .local v3, "token":J
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_float"

    const/4 v7, -0x2

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    nop

    .line 124
    const/4 v5, 0x0

    return v5

    .line 122
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw v5

    .line 108
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "token":J
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    return v1
.end method

.method private setDisplayWhiteBalanceLoggingEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method private setHdrMode(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrMode(Z)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "dwb-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "ab-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "dwb-set-cct"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "ab-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "dwb-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "enable-hdr-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_8
    const-string v2, "disable-hdr-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 64
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setHdrMode(Z)I

    move-result v1

    return v1

    .line 62
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setHdrMode(Z)I

    move-result v1

    return v1

    .line 58
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setAmbientColorTemperatureOverride()I

    move-result v1

    return v1

    .line 56
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 54
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 52
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 50
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 48
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result v1

    return v1

    .line 46
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ba2a8a1 -> :sswitch_8
        -0x59bb9cc8 -> :sswitch_7
        -0x495fecdc -> :sswitch_6
        -0x2b98d0f1 -> :sswitch_5
        0x1cd1c6dd -> :sswitch_4
        0x327f7a8b -> :sswitch_3
        0x40f5acce -> :sswitch_2
        0x5fa7aa9c -> :sswitch_1
        0x7c0d4adc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 74
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 78
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  ab-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    Enable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "  ab-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    Disable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "  dwb-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    Enable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "  dwb-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "    Disable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "  dwb-set-cct CCT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 93
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 94
    return-void
.end method

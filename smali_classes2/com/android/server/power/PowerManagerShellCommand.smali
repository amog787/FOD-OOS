.class Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# static fields
.field private static final LOW_POWER_MODE_ON:I = 0x1


# instance fields
.field final mInterface:Landroid/os/IPowerManager;


# direct methods
.method constructor <init>(Landroid/os/IPowerManager;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IPowerManager;

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    .line 34
    return-void
.end method

.method private runSetAdaptiveEnabled()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method private runSetFixedPerformanceModeEnabled()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 79
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Landroid/os/IPowerManager;->setPowerModeChecked(IZ)Z

    move-result v0

    .line 82
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 84
    .local v1, "ew":Ljava/io/PrintWriter;
    const-string v2, "Failed to set FIXED_PERFORMANCE mode"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v2, "This is likely because Power HAL AIDL is not implemented on this device"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .end local v1    # "ew":Ljava/io/PrintWriter;
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method private runSetMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 67
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    .line 69
    .local v1, "mode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 73
    nop

    .line 74
    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    .line 75
    return v3

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 38
    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1fb0eb0b

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x3d8ace98

    if-eq v2, v3, :cond_3

    const v3, 0x519c0c2e

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v2, "set-fixed-performance-mode-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_4
    const-string v2, "set-adaptive-power-saver-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 50
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetFixedPerformanceModeEnabled()I

    move-result v1

    return v1

    .line 48
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result v1

    return v1

    .line 46
    :cond_7
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetAdaptiveEnabled()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onHelp()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 93
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Power manager (power) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v2, "  set-adaptive-power-saver-enabled [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v2, "    enables or disables adaptive power saver."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v2, "  set-mode MODE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v2, "    sets the power mode of the device to MODE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v2, "    1 turns low power mode on and 0 turns low power mode off."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v2, "  set-fixed-performance-mode-enabled [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v2, "    enables or disables fixed performance mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v2, "    note: this will affect system performance and should only be used"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v2, "          during development"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 107
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 108
    return-void
.end method

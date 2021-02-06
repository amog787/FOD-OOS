.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;
    }
.end annotation


# static fields
.field private static final sToken:Landroid/os/IBinder;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;-><init>(Lcom/android/server/statusbar/StatusBarShellCommand$1;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private runAddTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->addTile(Landroid/content/ComponentName;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private runClickTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method private runCollapse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method private runDisableForSetup()I
    .locals 7

    .line 126
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "arg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 130
    .local v2, "disable":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/high16 v5, 0x3a50000

    sget-object v6, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/16 v5, 0x10

    sget-object v6, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 138
    :goto_0
    return v3
.end method

.method private runExpandNotifications()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method private runExpandSettings()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method private runGetStatusIcons()I
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 119
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getStatusBarIcons()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 120
    .local v5, "icon":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .end local v5    # "icon":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return v3
.end method

.method private runRemoveTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method private runSendDisableFlag()I
    .locals 10

    .line 142
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 144
    .local v1, "disable1":I
    const/4 v2, 0x0

    .line 146
    .local v2, "disable2":I
    new-instance v3, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v3}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 148
    .local v3, "info":Landroid/app/StatusBarManager$DisableInfo;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "arg":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 150
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "notification-icons"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_1
    const-string v5, "recents"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "statusbar-expansion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_3
    const-string v5, "clock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_4
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_2

    :sswitch_5
    const-string v5, "notification-alerts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_6
    const-string v7, "search"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :sswitch_7
    const-string v5, "system-icons"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 173
    :pswitch_0
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    .line 174
    goto :goto_3

    .line 170
    :pswitch_1
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    .line 171
    goto :goto_3

    .line 167
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    .line 168
    goto :goto_3

    .line 164
    :pswitch_3
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    .line 165
    goto :goto_3

    .line 161
    :pswitch_4
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    .line 162
    goto :goto_3

    .line 158
    :pswitch_5
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    .line 159
    goto :goto_3

    .line 155
    :pswitch_6
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    .line 156
    goto :goto_3

    .line 152
    :pswitch_7
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    .line 153
    nop

    .line 179
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 182
    :cond_1
    invoke-virtual {v3}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v6

    .line 184
    .local v6, "flagPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 187
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a7bc604 -> :sswitch_7
        -0x36059a58 -> :sswitch_6
        -0x2d0f4a47 -> :sswitch_5
        0x30f4df -> :sswitch_4
        0x5a5dc0e -> :sswitch_3
        0x3c4c98d3 -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x518d53b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private runTracing()I
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x360802

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x68ac462

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->stopTracing()V

    goto :goto_2

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->startTracing()V

    .line 194
    nop

    .line 199
    :goto_2
    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 52
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "expand-settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "expand-notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "check-support"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "disable-for-setup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "remove-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "collapse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "click-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "send-disable-flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "tracing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "get-status-icons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_a
    const-string v1, "add-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 76
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runTracing()I

    move-result v0

    return v0

    .line 74
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()I

    move-result v0

    return v0

    .line 72
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runDisableForSetup()I

    move-result v0

    return v0

    .line 70
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGetStatusIcons()I

    move-result v0

    return v0

    .line 66
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 67
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return v2

    .line 64
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result v0

    return v0

    .line 62
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result v0

    return v0

    .line 60
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result v0

    return v0

    .line 58
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result v0

    return v0

    .line 56
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result v0

    return v0

    .line 54
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :goto_2
    return v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 82
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_a
        -0x49dc556a -> :sswitch_9
        -0x3f9f2f3e -> :sswitch_8
        -0x3ebc9eaa -> :sswitch_7
        -0x310f1c2d -> :sswitch_6
        -0x25acdc53 -> :sswitch_5
        -0x143fd1a9 -> :sswitch_4
        0x35c1e3d4 -> :sswitch_3
        0x6019c00a -> :sswitch_2
        0x611d4ef5 -> :sswitch_1
        0x63a92df6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 205
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v2, "  expand-notifications"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v2, "    Open the notifications panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const-string v2, "  expand-settings"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    const-string v2, "    Open the notifications panel and expand quick settings if present."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v2, "  collapse"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v2, "    Collapse the notifications and settings panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const-string v2, "  add-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v2, "    Add a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string v2, "  remove-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v2, "    Remove a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v2, "  click-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v2, "    Click on a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v2, "  check-support"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v2, "    Check if this device supports QS + APIs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v2, "  get-status-icons"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v2, "    Print the list of status bar icons and the order they appear in"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v2, "  disable-for-setup DISABLE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v2, "  send-disable-flag FLAG..."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v2, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v2, "    Valid options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v2, "        <blank>             - equivalent to \"none\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v2, "        none                - re-enables all components"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v2, "        search              - disable search"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v2, "        home                - disable naviagation home"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v2, "        recents             - disable recents/overview"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    const-string v2, "        notification-peek   - disable notification peeking"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string v2, "        statusbar-expansion - disable status bar expansion"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const-string v2, "        clock               - disable clock appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const-string v2, "        notification-icons  - disable notification icons from status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string v2, "  tracing (start | stop)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    const-string v2, "    Start or stop SystemUI tracing"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    return-void
.end method

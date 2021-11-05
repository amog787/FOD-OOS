.class Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field protected static final DEBUG:Z = true

.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field protected final mNewUser:Landroid/content/pm/UserInfo;

.field protected final mOldUser:Landroid/content/pm/UserInfo;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z

.field private final mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private final mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z
    .param p6, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p7, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iget v0, p4, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 72
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 73
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 74
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 79
    if-eqz p5, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    return-void
.end method


# virtual methods
.method inflateContent()V
    .locals 7

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090134

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 98
    .local v3, "viewMessage":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_0

    .line 99
    const v4, 0x1040812

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .local v0, "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const v0, 0x10402bb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 104
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_1
    const v0, 0x10402bc

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_3

    .line 108
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_4

    .line 110
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 115
    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 116
    const v4, 0x1040815

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .line 119
    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 120
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public onWindowShown()V
    .locals 2

    .line 140
    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "onWindowShown called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 142
    return-void
.end method

.method public show()V
    .locals 5

    .line 126
    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    return-void
.end method

.method startUser()V
    .locals 3

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_1

    .line 147
    const-string v0, "ActivityManagerUserSwitchingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    .end local v1    # "decorView":Landroid/view/View;
    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "ActivityManagerUserSwitchingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

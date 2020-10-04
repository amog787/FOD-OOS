.class Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

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

    .line 63
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    iget v0, p4, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 68
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 69
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 70
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 75
    if-eqz p5, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 80
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 82
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method inflateContent()V
    .locals 7

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090125

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 94
    .local v3, "viewMessage":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_0

    .line 95
    const v4, 0x1040734

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .local v0, "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const v0, 0x10401fd

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_1
    const v0, 0x10401fe

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 103
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_3

    .line 104
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_4

    .line 106
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 111
    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 112
    const v4, 0x1040737

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "viewMessage":Ljava/lang/String;
    .restart local v3    # "viewMessage":Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .line 115
    .end local v3    # "viewMessage":Ljava/lang/String;
    .restart local v0    # "viewMessage":Ljava/lang/String;
    :goto_1
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 137
    return-void
.end method

.method public show()V
    .locals 5

    .line 122
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    return-void
.end method

.method startUser()V
    .locals 3

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    .end local v1    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

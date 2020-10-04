.class Lcom/android/server/am/OpUserSwitchingDialog;
.super Ljava/lang/Object;
.source "OpUserSwitchingDialog.java"

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

.field private mView:Landroid/view/View;

.field final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z
    .param p6, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p7, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/android/server/am/OpUserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpUserSwitchingDialog$1;-><init>(Lcom/android/server/am/OpUserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iget v0, p4, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mUserId:I

    .line 70
    iput-object p3, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 71
    iput-object p4, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 72
    iput-object p6, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindow:Landroid/view/Window;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p5}, Lcom/android/server/am/OpUserSwitchingDialog;->applyView(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method applyView(Z)V
    .locals 0
    .param p1, "aboveSystem"    # Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/OpUserSwitchingDialog;->inflateContent()V

    .line 84
    return-void
.end method

.method inflateContent()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x50b0068

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mView:Landroid/view/View;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "viewMessage":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_0

    .line 92
    const v2, 0x1040734

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const v2, 0x10401fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 97
    :cond_1
    const v2, 0x10401fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 108
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 109
    const v2, 0x1040737

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mView:Landroid/view/View;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/android/server/am/OpUserSwitchingDialog;->startUser()V

    .line 142
    return-void
.end method

.method public show()V
    .locals 7

    .line 116
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7da

    const/16 v4, 0x108

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 124
    const-string v2, "OpUserSwitchingDialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 127
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, "decorView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    return-void
.end method

.method startUser()V
    .locals 3

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mStartedUser:Z

    .line 150
    iget-object v1, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OpUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    .end local v1    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

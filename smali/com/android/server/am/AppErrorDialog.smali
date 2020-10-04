.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$Data;
    }
.end annotation


# static fields
.field static ALREADY_SHOWING:I = 0x0

.field static final APP_INFO:I = 0x8

.field static BACKGROUND_USER:I = 0x0

.field static final CANCEL:I = 0x7

.field static CANT_SHOW:I = 0x0

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x1

.field static final FORCE_QUIT_AND_REPORT:I = 0x2

.field static final MUTE:I = 0x5

.field static final RESTART:I = 0x3

.field static final TIMEOUT:I = 0x6


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRestartable:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    .line 46
    const/4 v0, -0x2

    sput v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    .line 47
    const/4 v0, -0x3

    sput v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iget-object v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 67
    iget-object v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    iget v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-boolean v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_restart_in_crash_dialog"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 71
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 74
    .local v1, "bidi":Landroid/text/BidiFormatter;
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v4

    .local v5, "name":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 78
    iget-object v4, p3, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/OpAppErrorDialogInjector;->showCrashDetail(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    nop

    .line 80
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 79
    invoke-static {p1, v2, v4}, Lcom/android/server/am/OpAppErrorDialogInjector;->getCrashDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 83
    :cond_2
    nop

    .line 84
    iget-boolean v4, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v4, :cond_3

    const v4, 0x104006f

    goto :goto_1

    .line 85
    :cond_3
    const v4, 0x104006e

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 83
    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 90
    .end local v5    # "name":Ljava/lang/CharSequence;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 91
    .restart local v5    # "name":Ljava/lang/CharSequence;
    nop

    .line 92
    iget-boolean v4, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v4, :cond_5

    const v4, 0x1040074

    goto :goto_2

    .line 93
    :cond_5
    const v4, 0x1040073

    :goto_2
    new-array v6, v3, [Ljava/lang/Object;

    .line 94
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 91
    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 98
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 101
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 110
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    .line 111
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v6, 0x493e0

    .line 110
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    return-void
.end method

.method private setResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 178
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-ne v1, p0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 182
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    nop

    .line 209
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x102019f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x102002b

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 119
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1090035

    invoke-virtual {v2, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 125
    .local v2, "hasReceiver":Z
    :goto_0
    const v5, 0x10201a3

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 126
    .local v5, "restart":Landroid/widget/TextView;
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-boolean v6, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const v6, 0x10201a2

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 129
    .local v6, "report":Landroid/widget/TextView;
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    if-eqz v2, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const v8, 0x10201a0

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 132
    .local v8, "close":Landroid/widget/TextView;
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v9, 0x102019f

    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 134
    .local v9, "appInfo":Landroid/widget/TextView;
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget-boolean v10, Landroid/os/Build;->IS_USER:Z

    if-nez v10, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "development_settings_enabled"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "show_mute_in_crash_dialog"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 140
    .local v3, "showMute":Z
    :goto_3
    const v10, 0x10201a1

    invoke-virtual {p0, v10}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 141
    .local v10, "mute":Landroid/widget/TextView;
    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    if-eqz v3, :cond_4

    move v7, v4

    :cond_4
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    const v7, 0x1020235

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 149
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStart()V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStop()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    return-void
.end method

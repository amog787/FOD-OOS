.class final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 50
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 52
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v4, v1

    .local v4, "name":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 54
    const v1, 0x104078d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 54
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    .end local v4    # "name":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 59
    .restart local v4    # "name":Ljava/lang/CharSequence;
    const v1, 0x104078e

    new-array v5, v2, [Ljava/lang/Object;

    .line 61
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 59
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    .line 66
    const/4 v1, -0x1

    const v5, 0x10402ca

    .line 67
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 66
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 70
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, -0x2

    const v5, 0x10406f6

    .line 72
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v1, v5, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Strict Mode Violation: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v5, 0xea60

    .line 80
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/StrictModeViolationDialog;

    .line 27
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/StrictModeViolationDialog;

    .line 27
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/StrictModeViolationDialog;

    .line 27
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

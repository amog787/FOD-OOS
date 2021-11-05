.class final Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
.super Ljava/lang/Object;
.source "RulesManagerServiceHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PermissionHelper;
.implements Ljava/util/concurrent/Executor;
.implements Lcom/android/server/timezone/RulesManagerIntentHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private sendOperationIntent(Z)V
    .locals 3
    .param p1, "staged"    # Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.timezone.RULES_UPDATE_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const-string v1, "staged"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    return-void
.end method


# virtual methods
.method public checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 49
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public enforceCallerHasPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "requiredPermission"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 54
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public sendTimeZoneOperationStaged()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    .line 60
    return-void
.end method

.method public sendTimeZoneOperationUnstaged()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    .line 65
    return-void
.end method

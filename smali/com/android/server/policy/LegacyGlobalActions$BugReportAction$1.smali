.class Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    .line 366
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x124

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    :goto_0
    return-void
.end method

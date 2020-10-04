.class Lcom/android/server/am/ActivityManagerServiceInjector$7;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->sendApplicationStopByForceStop(Landroid/os/Handler;Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 536
    :cond_1
    :goto_0
    return-void
.end method

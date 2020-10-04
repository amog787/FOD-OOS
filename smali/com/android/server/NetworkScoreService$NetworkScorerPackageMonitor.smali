.class Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScorerPackageMonitor"
.end annotation


# instance fields
.field final mPackageToWatch:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageToWatch"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/NetworkScoreService$1;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "changedPackageName"    # Ljava/lang/String;
    .param p2, "forceUnbind"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v0

    const-string v1, "NetworkScoreService"

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating binding for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", forceUnbind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v0}, Lcom/android/server/NetworkScoreService;->access$200(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 208
    .local v0, "activeScorer":Landroid/net/NetworkScorerAppData;
    if-nez v0, :cond_3

    .line 211
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "No active scorers available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->access$100(Lcom/android/server/NetworkScoreService;)V

    goto :goto_0

    .line 214
    :cond_3
    if-eqz p2, :cond_4

    .line 215
    iget-object v2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v2}, Lcom/android/server/NetworkScoreService;->access$300(Lcom/android/server/NetworkScoreService;)V

    .line 217
    :cond_4
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " if needed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1, v0}, Lcom/android/server/NetworkScoreService;->access$400(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V

    .line 223
    :goto_0
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 183
    if-eqz p4, :cond_0

    .line 184
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 185
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 184
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 169
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

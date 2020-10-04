.class public Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScoringServiceConnection"
.end annotation


# instance fields
.field private final mAppData:Landroid/net/NetworkScorerAppData;

.field private volatile mBound:Z

.field private volatile mConnected:Z

.field private volatile mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;


# direct methods
.method constructor <init>(Landroid/net/NetworkScorerAppData;)V
    .locals 1
    .param p1, "appData"    # Landroid/net/NetworkScorerAppData;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 979
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 983
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 984
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 988
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-nez v0, :cond_1

    .line 989
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 991
    const v1, 0x4000001

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 994
    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    const-string v2, "NetworkScoreService"

    if-nez v1, :cond_0

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind call failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ScoringServiceConnection bound."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    .end local v0    # "service":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 1057
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public getAppData()Landroid/net/NetworkScorerAppData;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1036
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1041
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScoreService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1043
    invoke-static {p2}, Landroid/net/INetworkRecommendationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkRecommendationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 1044
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1048
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection, disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScoreService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 1053
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1006
    const-string v0, "NetworkScoreService"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-eqz v2, :cond_0

    .line 1007
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 1008
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1009
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ScoringServiceConnection unbound."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    goto :goto_0

    .line 1011
    :catch_0
    move-exception v2

    .line 1012
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Unbind failed."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 1017
    return-void
.end method

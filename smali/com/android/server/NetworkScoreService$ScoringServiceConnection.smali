.class public Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
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

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 954
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 958
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 959
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 963
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 966
    const v1, 0x4000001

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 969
    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    const-string v2, "NetworkScoreService"

    if-nez v1, :cond_0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind call failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 973
    :cond_0
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ScoringServiceConnection bound."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
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

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 1032
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

    .line 1031
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method public getAppData()Landroid/net/NetworkScorerAppData;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1011
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

    .line 1016
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

    .line 1017
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1018
    invoke-static {p2}, Landroid/net/INetworkRecommendationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkRecommendationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 1019
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1023
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
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

    .line 1026
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 1028
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 981
    const-string v0, "NetworkScoreService"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-eqz v2, :cond_0

    .line 982
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 983
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 984
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ScoringServiceConnection unbound."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_0
    goto :goto_0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Unbind failed."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 992
    return-void
.end method

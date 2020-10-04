.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:J

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$1:J

    iput-object p4, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$1:J

    iget-object v3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

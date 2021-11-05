.class Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationId"
.end annotation


# instance fields
.field private final mId:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V
    .locals 0
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "type"    # I

    .line 5699
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5700
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5701
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    .line 5702
    return-void
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .line 5722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 5706
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5707
    :cond_0
    instance-of v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5708
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 5709
    .local v0, "that":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getId()I
    .locals 1

    .line 5730
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 5726
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 5714
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.class Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileOwnerReadWriter"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/Owners;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 919
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 920
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 921
    iput p2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    .line 922
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 939
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 940
    return v0

    .line 942
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7fdeed8f

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "profile-owner"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v4

    .line 944
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    nop

    .line 951
    return v0
.end method

.method shouldWrite()Z
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 932
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    .line 933
    const-string/jumbo v1, "profile-owner"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 935
    :cond_0
    return-void
.end method

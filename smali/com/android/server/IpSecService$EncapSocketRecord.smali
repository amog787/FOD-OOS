.class final Lcom/android/server/IpSecService$EncapSocketRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncapSocketRecord"
.end annotation


# instance fields
.field private final mPort:I

.field private mSocket:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V
    .locals 0
    .param p2, "resourceId"    # I
    .param p3, "socket"    # Ljava/io/FileDescriptor;
    .param p4, "port"    # I

    .line 946
    iput-object p1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->this$0:Lcom/android/server/IpSecService;

    .line 947
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 948
    iput-object p3, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 949
    iput p4, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 950
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 2

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpSecService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 959
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 960
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    return v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    .line 972
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 977
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeEncapSocketRecord(I)V

    .line 978
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v1, ", mSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 987
    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 989
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    return-object v0
.end method

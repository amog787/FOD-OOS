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

    .line 939
    iput-object p1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->this$0:Lcom/android/server/IpSecService;

    .line 940
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 941
    iput-object p3, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 942
    iput p4, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 943
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 2

    .line 948
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

    .line 949
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 952
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 953
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 956
    iget v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    return v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    .line 965
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 970
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeEncapSocketRecord(I)V

    .line 971
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v1, ", mSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    return-object v0
.end method

.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .line 651
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readInternal(JI)[B
    .locals 4
    .param p1, "offset"    # J
    .param p3, "maxLength"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 741
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    .local v0, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 747
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 748
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 749
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 750
    .local v2, "length":I
    if-lez v2, :cond_1

    if-le v2, p3, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    new-array v3, v2, [B

    .line 754
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 755
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 760
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 755
    return-object v3

    .line 751
    .end local v3    # "bytes":[B
    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 760
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 751
    return-object v3

    .line 756
    .end local v2    # "length":I
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 760
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "persistent partition not readable"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 760
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 761
    throw v1

    .line 742
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    .line 743
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "persistent partition not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDataBuffer(JLjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "dataBuffer"    # Ljava/nio/ByteBuffer;

    .line 707
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 711
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 712
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 713
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 714
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 715
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 718
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 719
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 720
    invoke-virtual {v2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 721
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 726
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    :try_start_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 727
    nop

    .line 729
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 730
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 731
    return-void

    .line 726
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 722
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 726
    :try_start_5
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v1

    .line 724
    return-void

    .line 726
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 727
    nop

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "dataBuffer":Ljava/nio/ByteBuffer;
    throw v2

    .line 730
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "dataBuffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 708
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 709
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    return-void
.end method

.method private writeInternal([BJI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # J
    .param p4, "dataLength"    # I

    .line 689
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 690
    if-eqz p1, :cond_3

    array-length v2, p1

    if-gt v2, p4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 694
    add-int/lit8 v0, p4, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 695
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    array-length v1, p1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 696
    if-eqz p1, :cond_5

    .line 697
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 699
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 701
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 702
    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .locals 4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 680
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 681
    return-void
.end method

.method public forceOemUnlockEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 766
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 768
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 769
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowedUid()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$2000(Lcom/android/server/PersistentDataBlockService;)I

    move-result v0

    return v0
.end method

.method public getFrpCredentialHandle()[B
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getTestHarnessModeData()[B
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    .line 671
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 672
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 674
    :cond_0
    return-object v0
.end method

.method public setFrpCredentialHandle([B)V
    .locals 3
    .param p1, "handle"    # [B

    .line 655
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 656
    return-void
.end method

.method public setTestHarnessModeData([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 665
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 666
    return-void
.end method

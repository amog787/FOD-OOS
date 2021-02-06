.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 94
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 95
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 96
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 97
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    array-length v0, p0

    .line 655
    .local v0, "end":I
    if-ge p1, v0, :cond_2

    .line 660
    move v1, p1

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 661
    aget-byte v2, p0, v1

    .line 664
    .local v2, "c":B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 665
    goto :goto_1

    .line 660
    .end local v2    # "c":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    :goto_1
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v3, p2, v2

    .line 669
    add-int/lit8 v1, v1, 0x1

    .line 670
    return v1

    .line 656
    .end local v1    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractRadix([BIII)J
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    const-wide/16 v0, 0x0

    .line 750
    .local v0, "value":J
    add-int v2, p1, p2

    .line 751
    .local v2, "end":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 752
    aget-byte v4, p0, v3

    .line 754
    .local v4, "b":B
    if-eqz v4, :cond_2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 755
    goto :goto_1

    .line 757
    :cond_0
    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    add-int/lit8 v5, p3, 0x30

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_1

    .line 761
    int-to-long v5, p3

    mul-long/2addr v5, v0

    add-int/lit8 v7, v4, -0x30

    int-to-long v7, v7

    add-long v0, v5, v7

    .line 751
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 758
    .restart local v4    # "b":B
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 763
    .end local v3    # "i":I
    .end local v4    # "b":B
    :cond_2
    :goto_1
    return-wide v0
.end method

.method private static extractString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    add-int v0, p1, p2

    .line 768
    .local v0, "end":I
    move v1, p1

    .line 770
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .locals 9
    .param p0, "block"    # [B

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "offset":I
    array-length v1, p0

    .line 779
    .local v1, "remaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    .local v2, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v1, :cond_2

    .line 781
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%04x   "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const/16 v4, 0x10

    if-le v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    .line 783
    .local v4, "numThisLine":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 784
    new-array v7, v3, [Ljava/lang/Object;

    add-int v8, v0, v5

    aget-byte v8, p0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "%02x "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 786
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "hexdump"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 788
    sub-int/2addr v1, v4

    .line 789
    add-int/2addr v0, v4

    .line 790
    .end local v4    # "numThisLine":I
    goto :goto_0

    .line 791
    :cond_2
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    if-lez p3, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "soFar":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 252
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 253
    .local v1, "nRead":I
    if-gtz v1, :cond_0

    .line 257
    goto :goto_1

    .line 259
    :cond_0
    add-int/2addr v0, v1

    .line 263
    .end local v1    # "nRead":I
    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    return v0

    .line 245
    .end local v0    # "soFar":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .locals 17
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v4, 0x8000

    cmp-long v2, v2, v4

    const-string v3, "BackupManagerService"

    if-gtz v2, :cond_8

    .line 695
    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v6, 0x1ff

    add-long/2addr v4, v6

    const/16 v2, 0x9

    shr-long/2addr v4, v2

    long-to-int v2, v4

    .line 696
    .local v2, "numBlocks":I
    mul-int/lit16 v4, v2, 0x200

    new-array v4, v4, [B

    .line 697
    .local v4, "data":[B
    iget-object v5, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v5

    array-length v6, v4

    if-lt v5, v6, :cond_7

    .line 700
    iget-object v5, v0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v6, v4

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 702
    iget-wide v5, v1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v5, v5

    .line 703
    .local v5, "contentSize":I
    const/4 v6, 0x0

    .line 706
    .local v6, "offset":I
    :goto_0
    add-int/lit8 v7, v6, 0x1

    .line 707
    .local v7, "eol":I
    :goto_1
    if-ge v7, v5, :cond_0

    aget-byte v8, v4, v7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_0

    .line 708
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 710
    :cond_0
    if-ge v7, v5, :cond_6

    .line 715
    sub-int v8, v7, v6

    const/16 v9, 0xa

    invoke-static {v4, v6, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    long-to-int v8, v8

    .line 716
    .local v8, "linelen":I
    add-int/lit8 v9, v7, 0x1

    .line 717
    .local v9, "key":I
    add-int v10, v6, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 719
    .end local v7    # "eol":I
    .local v10, "eol":I
    add-int/lit8 v7, v9, 0x1

    .local v7, "value":I
    :goto_2
    aget-byte v12, v4, v7

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_1

    if-gt v7, v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 722
    :cond_1
    if-gt v7, v10, :cond_5

    .line 727
    new-instance v12, Ljava/lang/String;

    sub-int v13, v7, v9

    const-string v14, "UTF-8"

    invoke-direct {v12, v4, v9, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 729
    .local v12, "keyStr":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    add-int/lit8 v15, v7, 0x1

    sub-int v16, v10, v7

    add-int/lit8 v0, v16, -0x1

    invoke-direct {v13, v4, v15, v0, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v13

    .line 731
    .local v0, "valStr":Ljava/lang/String;
    const-string/jumbo v13, "path"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 732
    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_3

    .line 733
    :cond_2
    const-string/jumbo v13, "size"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 734
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_3

    .line 737
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_3
    add-int/2addr v6, v8

    .line 742
    .end local v0    # "valStr":Ljava/lang/String;
    .end local v7    # "value":I
    .end local v8    # "linelen":I
    .end local v9    # "key":I
    .end local v10    # "eol":I
    .end local v12    # "keyStr":Ljava/lang/String;
    if-lt v6, v5, :cond_4

    .line 744
    return v11

    .line 742
    :cond_4
    move-object/from16 v0, p0

    goto :goto_0

    .line 723
    .restart local v7    # "value":I
    .restart local v8    # "linelen":I
    .restart local v9    # "key":I
    .restart local v10    # "eol":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid pax declaration"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    .end local v8    # "linelen":I
    .end local v9    # "key":I
    .end local v10    # "eol":I
    .local v7, "eol":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid pax data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    .end local v5    # "contentSize":I
    .end local v6    # "offset":I
    .end local v7    # "eol":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unable to read full pax header"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    .end local v2    # "numBlocks":I
    .end local v4    # "data":[B
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspiciously large pax header size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - aborting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sanity failure: pax header size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .locals 4
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 675
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 676
    return v1

    .line 678
    :cond_0
    if-lt v0, v2, :cond_1

    .line 681
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 682
    const/4 v1, 0x1

    return v1

    .line 679
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 17
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "pmi"    # Landroid/content/pm/PackageManagerInternal;
    .param p6, "userId"    # I

    .line 392
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v6, "Package "

    const-string v7, "BackupManagerService"

    if-nez v4, :cond_0

    .line 393
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    .line 396
    :cond_0
    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 400
    .local v8, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/high16 v11, 0x8000000

    move-object/from16 v12, p1

    move/from16 v13, p6

    :try_start_1
    invoke-virtual {v12, v0, v11, v13}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 403
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 404
    .local v11, "flags":I
    const v14, 0x8000

    and-int/2addr v14, v11

    if-eqz v14, :cond_7

    .line 407
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v14, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is system level with no agent"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v15, 0x26

    const/4 v9, 0x2

    invoke-static {v14, v15, v0, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v9, p5

    move-object v15, v5

    goto/16 :goto_1

    .line 416
    :cond_2
    :goto_0
    move-object/from16 v9, p5

    :try_start_2
    invoke-static {v4, v0, v9}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 417
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x20000

    and-int/2addr v14, v15

    if-eqz v14, :cond_3

    .line 419
    const-string v14, "Package has restoreAnyVersion; taking data"

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v15, 0x22

    const/4 v4, 0x3

    invoke-static {v14, v15, v0, v4, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 426
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v4

    move-object v15, v5

    goto/16 :goto_1

    .line 427
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    move/from16 v16, v11

    .end local v11    # "flags":I
    .local v16, "flags":I
    iget-wide v10, v3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v10, v14, v10

    if-ltz v10, :cond_4

    .line 428
    const-string v10, "Sig + version match; taking data"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object v10, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v10

    .line 430
    iget-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x23

    const/4 v4, 0x3

    const/4 v14, 0x0

    invoke-static {v10, v11, v0, v4, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object v15, v5

    goto/16 :goto_1

    .line 440
    :cond_4
    if-eqz v2, :cond_5

    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " is newer than installed version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " - requiring apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 441
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v6

    move-object v15, v5

    goto/16 :goto_1

    .line 448
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data requires newer version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string v14, "android.app.backup.extra.LOG_OLD_VERSION"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v15, v5

    :try_start_3
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 456
    const/4 v11, 0x0

    invoke-static {v11, v14, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v5

    .line 451
    const/16 v11, 0x24

    const/4 v14, 0x3

    invoke-static {v10, v11, v0, v14, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 461
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v5

    goto :goto_1

    .line 465
    .end local v16    # "flags":I
    .restart local v11    # "flags":I
    :cond_6
    move-object v15, v5

    move/from16 v16, v11

    .end local v11    # "flags":I
    .restart local v16    # "flags":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x25

    const/4 v4, 0x3

    const/4 v11, 0x0

    invoke-static {v5, v10, v0, v4, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 497
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "flags":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 487
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "flags":I
    :cond_7
    move-object/from16 v9, p5

    move-object v15, v5

    move/from16 v16, v11

    .end local v11    # "flags":I
    .restart local v16    # "flags":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore manifest from "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " but allowBackup=false"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x27

    const/4 v4, 0x3

    const/4 v11, 0x0

    invoke-static {v5, v10, v0, v4, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 522
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "flags":I
    :goto_1
    move-object v6, v15

    goto :goto_5

    .line 497
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v9, p5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v9, p5

    move/from16 v13, p6

    :goto_2
    move-object v15, v5

    .line 501
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    if-eqz v2, :cond_8

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not installed; requiring apk in dataset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v5

    .end local v8    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v5, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    goto :goto_4

    .line 508
    .end local v5    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v8    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_8
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v8, v5

    .line 510
    :goto_4
    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v6, v15

    const/4 v4, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 513
    .local v5, "monitoringExtras":Landroid/os/Bundle;
    const-string v10, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v5, v10, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 516
    iget-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x28

    const/4 v14, 0x3

    invoke-static {v10, v11, v4, v14, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 524
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "monitoringExtras":Landroid/os/Bundle;
    :goto_5
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v8, v0, :cond_9

    iget-boolean v0, v3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v0, :cond_9

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without the matching .apk"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0x29

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 532
    const/4 v4, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 527
    const/4 v7, 0x3

    invoke-static {v0, v5, v4, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 536
    :cond_9
    return-object v8
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v4, "BackupManagerService"

    iget-wide v5, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v7, 0x10000

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    .line 282
    iget-wide v5, v2, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v5

    new-array v5, v0, [B

    .line 287
    .local v5, "buffer":[B
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v0, v5, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v8, v0

    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_5

    .line 288
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v0, v8, v9}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 293
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 294
    .local v6, "str":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 297
    .local v8, "offset":I
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    move v8, v11

    .line 298
    aget-object v11, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 299
    .local v11, "version":I
    if-ne v11, v0, :cond_4

    .line 300
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 301
    aget-object v0, v6, v7

    .line 303
    .local v0, "manifestPackage":Ljava/lang/String;
    iget-object v12, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 304
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 305
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v2, Lcom/android/server/backup/FileMetadata;->version:J

    .line 306
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 309
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 311
    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    aget-object v12, v6, v7

    goto :goto_0

    :cond_0
    move-object v12, v10

    :goto_0
    iput-object v12, v2, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 312
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 313
    aget-object v12, v6, v7

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v2, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 314
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 315
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 316
    .local v12, "numSigs":I
    if-lez v12, :cond_2

    .line 317
    new-array v13, v12, [Landroid/content/pm/Signature;

    .line 318
    .local v13, "sigs":[Landroid/content/pm/Signature;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v12, :cond_1

    .line 319
    invoke-static {v5, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v15

    move v8, v15

    .line 320
    new-instance v15, Landroid/content/pm/Signature;

    aget-object v9, v6, v7

    invoke-direct {v15, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    .line 318
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 322
    .end local v14    # "i":I
    :cond_1
    return-object v13

    .line 324
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing signature on backed-up package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2a

    iget-object v13, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 330
    invoke-static {v10, v3, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 325
    const/4 v14, 0x3

    invoke-static {v7, v9, v10, v14, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 333
    .end local v12    # "numSigs":I
    goto :goto_2

    .line 334
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but restore manifest claims "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v3, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 338
    .local v7, "monitoringExtras":Landroid/os/Bundle;
    const-string v9, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v7, v9, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v7, v9

    .line 341
    iget-object v9, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v12, 0x2b

    const/4 v13, 0x3

    invoke-static {v9, v12, v10, v13, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 348
    .end local v0    # "manifestPackage":Ljava/lang/String;
    .end local v7    # "monitoringExtras":Landroid/os/Bundle;
    :goto_2
    goto :goto_3

    .line 349
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown restore manifest version "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 353
    .local v0, "monitoringExtras":Landroid/os/Bundle;
    const-string v7, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v12, v11

    invoke-static {v0, v7, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, v7

    .line 355
    iget-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2c

    const/4 v12, 0x3

    invoke-static {v7, v9, v10, v12, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 372
    .end local v0    # "monitoringExtras":Landroid/os/Bundle;
    .end local v11    # "version":I
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 363
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Corrupt restore manifest for package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x2e

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 370
    invoke-static {v10, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 365
    const/4 v9, 0x3

    invoke-static {v4, v7, v10, v9, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 374
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    nop

    .line 376
    :goto_4
    return-object v10

    .line 290
    .end local v6    # "str":[Ljava/lang/String;
    .end local v8    # "offset":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unexpected EOF in manifest"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v5    # "buffer":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore manifest too big; corrupt? size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 13
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 566
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 567
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 573
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 574
    .local v2, "str":[Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 575
    .local v4, "offset":I
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 576
    .local v5, "version":I
    const/4 v6, 0x3

    const-string v7, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v8, "BackupManagerService"

    const/4 v9, 0x0

    if-ne v5, v1, :cond_4

    .line 577
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 578
    aget-object v1, v2, v3

    .line 579
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 582
    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-direct {v3, v0, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 584
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 585
    .local v6, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    .line 586
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 587
    .local v7, "token":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 588
    .local v9, "size":I
    const/high16 v10, 0x10000

    if-gt v9, v10, :cond_1

    .line 592
    const v10, 0x1ffed01

    if-eq v7, v10, :cond_0

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring metadata blob "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v6, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1

    .line 597
    :cond_0
    new-array v10, v9, [B

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 598
    invoke-virtual {v6, v10}, Ljava/io/DataInputStream;->read([B)I

    .line 599
    nop

    .line 610
    .end local v7    # "token":I
    .end local v9    # "size":I
    :goto_1
    goto :goto_0

    .line 589
    .restart local v7    # "token":I
    .restart local v9    # "size":I
    :cond_1
    new-instance v8, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Datum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " too big; corrupt? size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 611
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "token":I
    .end local v9    # "size":I
    :cond_2
    goto :goto_2

    .line 612
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Metadata mismatch: package "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " but widget data for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v9, v7, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 618
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v7, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v7, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 620
    iget-object v7, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x2f

    invoke-static {v7, v8, v9, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 627
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_2
    goto :goto_3

    .line 628
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported metadata version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 631
    invoke-static {v9, v7, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 633
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    int-to-long v7, v5

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-static {v1, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v1

    .line 635
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x30

    invoke-static {v3, v7, v9, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 642
    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    :goto_3
    return-void

    .line 570
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "version":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in widget data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    .end local v0    # "buffer":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string v0, "apps/"

    const-string/jumbo v1, "shared/"

    const-string v2, "BackupManagerService"

    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 104
    .local v3, "block":[B
    const/4 v4, 0x0

    .line 106
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    invoke-direct {p0, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v5

    .line 107
    .local v5, "gotHeader":Z
    if-eqz v5, :cond_d

    .line 110
    :try_start_0
    new-instance v6, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v6}, Lcom/android/server/backup/FileMetadata;-><init>()V

    move-object v4, v6

    .line 111
    const/16 v6, 0x7c

    const/16 v7, 0xc

    const/16 v8, 0x8

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/backup/FileMetadata;->size:J

    .line 115
    const/16 v6, 0x88

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 119
    const/16 v6, 0x64

    invoke-static {v3, v6, v8, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 124
    const/16 v7, 0x159

    const/16 v8, 0x9b

    invoke-static {v3, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 127
    const/4 v7, 0x0

    invoke-static {v3, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x2f

    if-lez v8, :cond_1

    .line 131
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 138
    :cond_1
    const/16 v8, 0x9c

    aget-byte v10, v3, v8

    .line 139
    .local v10, "typeChar":I
    const/16 v11, 0x78

    if-ne v10, v11, :cond_4

    .line 141
    invoke-direct {p0, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v11

    move v5, v11

    .line 142
    if-eqz v5, :cond_2

    .line 145
    invoke-direct {p0, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v11

    move v5, v11

    .line 147
    :cond_2
    if-eqz v5, :cond_3

    .line 151
    aget-byte v8, v3, v8

    move v10, v8

    goto :goto_0

    .line 148
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v0

    .line 154
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_4
    :goto_0
    if-eqz v10, :cond_c

    const/16 v8, 0x30

    if-eq v10, v8, :cond_6

    const/16 v8, 0x35

    if-ne v10, v8, :cond_5

    .line 159
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 160
    iget-wide v11, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-eqz v8, :cond_7

    .line 161
    const-string v8, "Directory entry with nonzero size in header"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-wide v13, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tar entity type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown entity type "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v0

    .line 156
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_6
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 157
    nop

    .line 182
    :cond_7
    :goto_1
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 182
    invoke-virtual {v1, v7, v8, v7, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 185
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 186
    const-string v0, "com.android.sharedstoragebackup"

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "shared"

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File in shared storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 191
    :cond_8
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 191
    invoke-virtual {v0, v7, v1, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 196
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 199
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 200
    .local v0, "slash":I
    if-ltz v0, :cond_a

    .line 203
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 204
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 208
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_manifest"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_meta"

    .line 209
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 210
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v0, v1

    .line 211
    if-ltz v0, :cond_9

    .line 215
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 216
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    .line 212
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in non-manifest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v1

    .line 201
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "slash":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "typeChar":I
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_b
    :goto_2
    goto :goto_3

    .line 171
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v10    # "typeChar":I
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 219
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "typeChar":I
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error in header: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    throw v0

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_3
    return-object v4
.end method

.method public skipTarPadding(J)V
    .locals 7
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    const-wide/16 v0, 0x200

    add-long v2, p1, v0

    rem-long/2addr v2, v0

    .line 543
    .local v2, "partial":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 544
    long-to-int v0, v2

    rsub-int v0, v0, 0x200

    .line 548
    .local v0, "needed":I
    new-array v1, v0, [B

    .line 549
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    .end local v0    # "needed":I
    .end local v1    # "buffer":[B
    :cond_1
    :goto_0
    return-void
.end method

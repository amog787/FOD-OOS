.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "millis"    # J

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 1078
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 1079
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 1081
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, "parseFailure":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1013
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 1014
    .local v3, "tag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1016
    .local v4, "millis":J
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1017
    .local v6, "at":I
    const/4 v7, 0x0

    if-gez v6, :cond_0

    .line 1018
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1020
    :cond_0
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1021
    const-string v8, ".gz"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1022
    or-int/lit8 v2, v2, 0x4

    .line 1023
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1025
    :cond_1
    const-string v8, ".lost"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1026
    or-int/lit8 v2, v2, 0x1

    .line 1027
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1028
    :cond_2
    const-string v8, ".txt"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1029
    or-int/lit8 v2, v2, 0x2

    .line 1030
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1031
    :cond_3
    const-string v8, ".dat"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1032
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v0, 0x1

    .line 1036
    :goto_0
    if-nez v0, :cond_5

    .line 1044
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 1045
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v9

    .end local v8    # "date":Ljava/util/Date;
    goto :goto_1

    .line 1049
    :catch_0
    move-exception v8

    .line 1050
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_1

    .line 1047
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1048
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    .line 1054
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 1055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DropBoxManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1059
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 1060
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 1061
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 1062
    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 1063
    return-void

    .line 1066
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    int-to-long v9, p2

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, p2

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 1067
    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 1068
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 1069
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 1070
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 16
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "flags"    # I
    .param p7, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 939
    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_5

    .line 941
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 942
    move-wide/from16 v5, p4

    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 943
    iput v3, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 945
    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 946
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 949
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    int-to-long v11, v4

    add-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    int-to-long v11, v4

    div-long/2addr v9, v11

    long-to-int v0, v9

    iput v0, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to /data/oem_log/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "DropBoxManagerService"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v9, 0x0

    .line 954
    .local v9, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 955
    .local v10, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/oem_log/dropbox"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 956
    .local v11, "folder":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 959
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 961
    .local v12, "dest":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 962
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v10, v0

    .line 963
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 965
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v14, v13

    .local v14, "length":I
    const/4 v15, 0x0

    if-lez v13, :cond_1

    .line 966
    invoke-virtual {v10, v0, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 968
    :cond_1
    const/4 v13, 0x1

    invoke-virtual {v12, v13, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 969
    invoke-virtual {v12, v13, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 970
    invoke-virtual {v12, v13, v15}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    nop

    .line 973
    .end local v0    # "buffer":[B
    .end local v14    # "length":I
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 975
    nop

    .line 976
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 980
    return-void

    .line 972
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 973
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 975
    :cond_2
    if-eqz v10, :cond_3

    .line 976
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 978
    :cond_3
    throw v0

    .line 947
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "dest":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t rename "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    move-object/from16 v7, p2

    move-wide/from16 v5, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 992
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 993
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 994
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 995
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 996
    return-void
.end method

.method private getExtension()Ljava/lang/String;
    .locals 2

    .line 1093
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1094
    const-string v0, ".lost"

    return-object v0

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ".txt"

    goto :goto_0

    :cond_1
    const-string v1, ".dat"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, ".gz"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    return-object v0
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .locals 4
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 914
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 915
    .local v0, "comp":I
    if-eqz v0, :cond_0

    return v0

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 918
    if-eqz v0, :cond_1

    return v0

    .line 920
    :cond_1
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 921
    if-eqz v0, :cond_2

    return v0

    .line 923
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 905
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/oem_log/dropbox/"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1145
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 6

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1109
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "mDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const-string v5, ".txt"

    goto :goto_0

    :cond_0
    const-string v5, ".dat"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    const-string v5, ".gz"

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1110
    return-object v3

    .line 1114
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v2    # "mDate":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFile()Z
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

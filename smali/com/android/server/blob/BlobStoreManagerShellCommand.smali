.class Lcom/android/server/blob/BlobStoreManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "BlobStoreManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    }
.end annotation


# instance fields
.field private final mService:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0
    .param p1, "blobStoreManagerService"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 30
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 32
    return-void
.end method

.method private parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    const-string v0, "--algo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v0, "--expiry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    const-string v0, "--digest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_4
    const-string v0, "--tag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_5
    const-string v0, "-u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_6
    const-string v0, "-b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_7
    const-string v0, "--label"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown option \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return v3

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    .line 166
    goto :goto_3

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    .line 163
    goto :goto_3

    .line 159
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    .line 160
    goto :goto_3

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    .line 157
    goto :goto_3

    .line 153
    :pswitch_4
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    .line 154
    goto :goto_3

    .line 150
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    .line 151
    goto :goto_3

    .line 147
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 148
    nop

    .line 169
    :goto_3
    goto/16 :goto_0

    .line 172
    :cond_1
    iget v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 175
    :cond_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609e02ac -> :sswitch_7
        0x5d5 -> :sswitch_6
        0x5e8 -> :sswitch_5
        0x29055fa -> :sswitch_4
        0x3fa9eb64 -> :sswitch_3
        0x42364ad3 -> :sswitch_2
        0x4f71eff3 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runClearAllBlobs(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 69
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$1;)V

    .line 70
    .local v0, "args":Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v2

    if-gez v2, :cond_0

    .line 73
    return v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllBlobs(I)V

    .line 77
    const/4 v1, 0x0

    return v1
.end method

.method private runClearAllSessions(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 57
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$1;)V

    .line 58
    .local v0, "args":Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v2

    if-gez v2, :cond_0

    .line 61
    return v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllSessions(I)V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method private runDeleteBlob(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 81
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$1;)V

    .line 83
    .local v0, "args":Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v1

    if-gez v1, :cond_0

    .line 84
    const/4 v1, -0x1

    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v2

    iget v3, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlob(Landroid/app/blob/BlobHandle;I)V

    .line 88
    const/4 v1, 0x0

    return v1
.end method

.method private runIdleMaintenance(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 92
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService;->runIdleMaintenance()V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method private runQueryBlobExistence(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 97
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$1;)V

    .line 98
    .local v0, "args":Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v1

    if-gez v1, :cond_0

    .line 99
    const/4 v1, -0x1

    return v1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget-wide v2, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    iget v4, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->isBlobAvailable(JI)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 103
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 40
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "query-blob-existence"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "clear-all-blobs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "clear-all-sessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_4
    const-string v2, "delete-blob"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 50
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runQueryBlobExistence(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 48
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 46
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runDeleteBlob(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 44
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllBlobs(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 42
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllSessions(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45a66181 -> :sswitch_4
        -0x39e20d37 -> :sswitch_3
        -0xf634e36 -> :sswitch_2
        0x2a7987b7 -> :sswitch_1
        0x6ef5269a -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 109
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "BlobStore service (blob_store) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 113
    const-string v1, "clear-all-sessions [-u | --user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "    Remove all sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "    Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v2, "      -u or --user: specify which user\'s sessions to be removed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v2, "                    If not specified, sessions in all users are removed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 119
    const-string v2, "clear-all-blobs [-u | --user USER_ID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v2, "    Remove all blobs."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v2, "      -u or --user: specify which user\'s blobs to be removed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v2, "                    If not specified, blobs in all users are removed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v3, "delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v3, "    Delete a blob."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v1, "      -u or --user: specify which user\'s blobs to be removed;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v1, "      --digest: Base64 encoded digest of the blob to delete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v1, "      --expiry: Expiry time of the blob to delete, in milliseconds."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v1, "      --label: Label of the blob to delete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v1, "      --tag: Tag of the blob to delete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "idle-maintenance"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v1, "    Run idle maintenance which takes care of removing stale data."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "query-blob-existence [-b BLOB_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v1, "    Prints 1 if blob exists, otherwise 0."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 139
    return-void
.end method

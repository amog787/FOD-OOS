.class Lcom/android/server/people/data/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field private static final CONVERSATIONS_END_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultDialer:Ljava/lang/String;

.field private mDefaultSmsApp:Ljava/lang/String;

.field private mIsUnlocked:Z

.field private mPackageDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerUserPeopleDataDir:Ljava/io/File;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/server/people/data/UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 62
    iput p1, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 63
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "people"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 64
    iput-object p2, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    return-void
.end method

.method private createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    new-instance v7, Lcom/android/server/people/data/PackageData;

    iget v2, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v3, Lcom/android/server/people/data/-$$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog;

    invoke-direct {v3, p0}, Lcom/android/server/people/data/-$$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v4, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;

    invoke-direct {v4, p0}, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v5, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    return-object v7
.end method

.method private isDefaultDialer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isDefaultSmsApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$TPSEt8UEq8YfkquaYQxcUwkYOog(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultDialer(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ZvGOO47u-RNbT2ZvsBaz0srnAjw(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultSmsApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method deletePackageData(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 119
    .local v0, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->onDestroy()V

    .line 122
    :cond_0
    return-void
.end method

.method forAllPackages(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/PackageData;>;"
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/PackageData;

    .line 73
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    .end local v1    # "packageData":Lcom/android/server/people/data/PackageData;
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method getBackupPayload()[B
    .locals 7

    .line 144
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    .local v1, "out":Ljava/io/DataOutputStream;
    iget-object v2, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/PackageData;

    .line 148
    .local v3, "packageData":Lcom/android/server/people/data/PackageData;
    nop

    .line 149
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/people/data/ConversationStore;->getBackupPayload()[B

    move-result-object v5

    .line 150
    .local v5, "conversationsBackupPayload":[B
    array-length v6, v5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 152
    invoke-virtual {v3}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v5    # "conversationsBackupPayload":[B
    nop

    .line 157
    .end local v3    # "packageData":Lcom/android/server/people/data/PackageData;
    goto :goto_0

    .line 153
    .restart local v3    # "packageData":Lcom/android/server/people/data/PackageData;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v6, "Failed to write conversations to backup payload."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-object v4

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "packageData":Lcom/android/server/people/data/PackageData;
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    nop

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 160
    :catch_1
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write conversations end token to backup payload."

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-object v4
.end method

.method getDefaultDialer()Lcom/android/server/people/data/PackageData;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getDefaultSmsApp()Lcom/android/server/people/data/PackageData;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    return-object v0
.end method

.method getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    return v0
.end method

.method isUnlocked()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return v0
.end method

.method public synthetic lambda$getOrCreatePackageData$0$UserData(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/people/data/UserData;->createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    return-object v0
.end method

.method loadUserData()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 92
    iget v0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v3, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/people/data/PackageData;->packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 95
    .local v0, "packageDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/PackageData;>;"
    iget-object v1, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method restore([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 168
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 171
    .local v1, "conversationsPayloadSize":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 173
    new-array v2, v1, [B

    .line 174
    .local v2, "conversationsPayload":[B
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 175
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/people/data/ConversationStore;->restore([B)V

    .line 172
    .end local v2    # "conversationsPayload":[B
    .end local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 181
    .end local v1    # "conversationsPayloadSize":I
    :cond_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v3, "Failed to restore conversations from backup payload."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method setDefaultDialer(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    .line 126
    return-void
.end method

.method setDefaultSmsApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    .line 135
    return-void
.end method

.method setUserStopped()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 83
    return-void
.end method

.method setUserUnlocked()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 79
    return-void
.end method

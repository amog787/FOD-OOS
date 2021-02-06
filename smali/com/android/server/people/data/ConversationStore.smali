.class Lcom/android/server/people/data/ConversationStore;
.super Ljava/lang/Object;
.source "ConversationStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    }
.end annotation


# static fields
.field private static final CONVERSATIONS_FILE_NAME:Ljava/lang/String; = "conversations"

.field private static final CONVERSATION_INFOS_END_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactUriToShortcutIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

.field private final mLocusIdToShortcutIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/LocusId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifChannelIdToShortcutIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDir:Ljava/io/File;

.field private final mPhoneNumberToShortcutIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 84
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    .line 86
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package data directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v3, "conversations"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    return-object v0
.end method

.method private declared-synchronized scheduleUpdateConversationsOnDisk()V
    .locals 3

    monitor-enter p0

    .line 277
    nop

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    .line 279
    .local v0, "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 281
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->scheduleConversationsSave(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 276
    .end local v0    # "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 6
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    .line 254
    .local v0, "locusId":Landroid/content/LocusId;
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 259
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 260
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "phoneNumber":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "notifChannelId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 270
    iget-object v4, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_3
    monitor-exit p0

    return-void

    .line 250
    .end local v0    # "locusId":Landroid/content/LocusId;
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "notifChannelId":Ljava/lang/String;
    .end local p1    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 0
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 126
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .end local p1    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 6
    .param p1, "shortcutId"    # Ljava/lang/String;

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v0, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    .line 138
    .local v1, "locusId":Landroid/content/LocusId;
    if-eqz v1, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    .line 143
    .local v2, "contactUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "phoneNumber":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 149
    iget-object v4, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "notifChannelId":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 154
    iget-object v5, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_4
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-object v0

    .line 131
    .end local v0    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v1    # "locusId":Landroid/content/LocusId;
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "notifChannelId":Ljava/lang/String;
    .end local p1    # "shortcutId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized forAllConversations(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/ConversationInfo;>;"
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 162
    .local v1, "ci":Lcom/android/server/people/data/ConversationInfo;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "ci":Lcom/android/server/people/data/ConversationInfo;
    goto :goto_0

    .line 164
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/ConversationInfo;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getBackupPayload()[B
    .locals 8

    monitor-enter p0

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v1, "conversationInfosOut":Ljava/io/DataOutputStream;
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/ConversationInfo;

    .line 208
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-virtual {v3}, Lcom/android/server/people/data/ConversationInfo;->getBackupPayload()[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v5, "backupPayload":[B
    if-nez v5, :cond_0

    .line 210
    goto :goto_0

    .line 213
    :cond_0
    :try_start_1
    array-length v6, v5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    nop

    .line 219
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v5    # "backupPayload":[B
    goto :goto_0

    .line 215
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .restart local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .restart local v5    # "backupPayload":[B
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write conversation info to backup payload."

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    monitor-exit p0

    return-object v4

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v5    # "backupPayload":[B
    :cond_1
    const/4 v2, -0x1

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    nop

    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    .line 222
    :catch_1
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v3, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write conversation infos end token to backup payload."

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    monitor-exit p0

    return-object v4

    .line 204
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "conversationInfosOut":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    monitor-enter p0

    .line 168
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .end local p1    # "shortcutId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 168
    .restart local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .restart local p1    # "shortcutId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .end local p1    # "contactUri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "locusId"    # Landroid/content/LocusId;

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 173
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .end local p1    # "locusId":Landroid/content/LocusId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getConversationByNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "notifChannelId"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized loadConversationsFromDisk()V
    .locals 4

    monitor-enter p0

    .line 94
    nop

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v0, "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    if-nez v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    const-string v1, "conversations"

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v1, "conversationsOnDisk":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    if-nez v1, :cond_1

    .line 102
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/ConversationInfo;

    .line 105
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-direct {p0, v3}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    goto :goto_0

    .line 107
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_2
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    .end local v1    # "conversationsOnDisk":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 194
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    .line 198
    .local v0, "writer":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->deleteConversationsFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "writer":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restore([B)V
    .locals 4
    .param p1, "payload"    # [B

    monitor-enter p0

    .line 230
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 233
    .local v1, "conversationInfoSize":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 235
    new-array v2, v1, [B

    .line 236
    .local v2, "conversationInfoPayload":[B
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 237
    invoke-static {v2}, Lcom/android/server/people/data/ConversationInfo;->readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 239
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v3, :cond_0

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 234
    .end local v2    # "conversationInfoPayload":[B
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    .line 245
    .end local v1    # "conversationInfoSize":I
    :cond_1
    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read conversation info from payload."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    return-void

    .line 229
    .end local v0    # "in":Ljava/io/DataInputStream;
    .end local p1    # "payload":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveConversationsToDisk()V
    .locals 3

    monitor-enter p0

    .line 115
    nop

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    .line 117
    .local v0, "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 119
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->saveConversationsImmediately(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local p0    # "this":Lcom/android/server/people/data/ConversationStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "conversationInfosProtoDiskReadWriter":Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/android/server/backup/PeopleBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PeopleBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CONVERSATIONS:Ljava/lang/String; = "people_conversation_infos"

.field private static final STATE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/android/server/backup/PeopleBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PeopleBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 39
    const-string/jumbo v0, "people_conversation_infos"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    .line 41
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 58
    const-string/jumbo v0, "people_conversation_infos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/server/backup/PeopleBackupHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected restore key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_0
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 66
    .local v0, "ps":Lcom/android/server/people/PeopleServiceInternal;
    iget v1, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/people/PeopleServiceInternal;->restore(I[B)V

    .line 67
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "people_conversation_infos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/android/server/backup/PeopleBackupHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected backup key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 49
    :cond_0
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 53
    .local v0, "ps":Lcom/android/server/people/PeopleServiceInternal;
    iget v1, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/people/PeopleServiceInternal;->getBackupPayload(I)[B

    move-result-object v1

    return-object v1
.end method

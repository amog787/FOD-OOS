.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 57
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 58
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 60
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 110
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    return-void

    .line 118
    :cond_1
    const-wide/16 v1, -0x1

    .line 120
    .local v1, "currentVersionCode":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to restore package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but signatures not found in the restore data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 123
    const/16 v3, 0x66

    .local v3, "restoreBlockReason":I
    goto :goto_0

    .line 125
    .end local v3    # "restoreBlockReason":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 126
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 127
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->canRestoreAnyVersion()Z

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I

    move-result v4

    move v3, v4

    .line 137
    .local v3, "restoreBlockReason":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    .line 140
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    .line 142
    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 143
    return-void
.end method

.method protected abstract canRestoreAnyVersion()Z
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 3
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    return-object v0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUserId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return v0
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object v0
.end method

.method protected abstract onRestored(I)V
.end method

.method public refreshPackageSignatureAndSave()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 101
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 103
    return-void
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 67
    return-void
.end method

.method public saveToFile(Ljava/io/File;Z)V
    .locals 6
    .param p1, "path"    # Ljava/io/File;
    .param p2, "forBackup"    # Z

    .line 153
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 154
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 156
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 157
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 161
    .local v3, "itemOut":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 166
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 168
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 169
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "itemOut":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public verifyStates()V
    .locals 0

    .line 187
    return-void
.end method

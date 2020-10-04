.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;,
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    }
.end annotation


# static fields
.field static final ADMIN_TYPE_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field static final ADMIN_TYPE_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field public static final OWNER_TRANSFER_METADATA_XML:Ljava/lang/String; = "owner-transfer-metadata.xml"

.field private static final TAG:Ljava/lang/String;

.field static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_USER_ID:Ljava/lang/String; = "user-id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .locals 0
    .param p1, "injector"    # Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 77
    return-void
.end method

.method private insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    return-void
.end method

.method private parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 138
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 139
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 140
    .local v2, "adminComponent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, "targetComponent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, "adminType":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_8

    .line 144
    :cond_1
    if-eq v6, v5, :cond_0

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v10, "admin-type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_2

    :sswitch_1
    const-string/jumbo v10, "source-component"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v11

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "user-id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v10, "target-component"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v7

    goto :goto_2

    :goto_1
    move v8, v9

    :goto_2
    if-eqz v8, :cond_7

    if-eq v8, v7, :cond_6

    if-eq v8, v11, :cond_5

    if-eq v8, v5, :cond_4

    goto :goto_3

    .line 161
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 157
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 159
    goto :goto_3

    .line 153
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 155
    goto :goto_3

    .line 149
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    nop

    .line 163
    :goto_3
    goto :goto_0

    .line 166
    :cond_8
    new-instance v5, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    invoke-direct {v5, v2, v3, v1, v4}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1419903f -> :sswitch_3
        -0x8c5cda3 -> :sswitch_2
        0x10c541cb -> :sswitch_1
        0x264366f8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method deleteMetadataFile()V
    .locals 3

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    return-void
.end method

.method loadMetadataFile()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 6

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 117
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v0, "transferOwnershipMetadataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 119
    return-object v2

    .line 121
    :cond_0
    sget-object v1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading TransferOwnershipMetadataManager from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 125
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    return-object v4

    .line 123
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v3

    .end local v0    # "transferOwnershipMetadataFile":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .restart local v0    # "transferOwnershipMetadataFile":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transferOwnershipMetadataFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "transferOwnershipMetadataFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception while trying to load the owner transfer params from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method metadataFileExists()Z
    .locals 3

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 174
    return v0
.end method

.method saveMetadataFile(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;)Z
    .locals 7
    .param p1, "params"    # Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "transferOwnershipMetadataFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 83
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 85
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 86
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 87
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 88
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    const-string/jumbo v4, "user-id"

    iget v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "source-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v4, "target-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 93
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v4, "admin-type"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 96
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return v5

    .line 98
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception while trying to save Owner Transfer Params to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    return v3
.end method

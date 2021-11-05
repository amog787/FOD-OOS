.class Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettings$Entry;,
        Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;,
        Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    }
.end annotation


# static fields
.field private static final DISPLAY_SETTINGS_FILE_NAME:Ljava/lang/String; = "display_settings.xml"

.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VENDOR_DISPLAY_SETTINGS_PATH:Ljava/lang/String; = "etc/display_settings.xml"

.field private static final WM_DISPLAY_COMMIT_TAG:Ljava/lang/String; = "wm-displays"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplayWindowSettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 152
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V

    .line 153
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "storageImpl"    # Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 157
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 158
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 159
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->readSettings()V

    .line 160
    return-void
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 501
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    return v1

    .line 503
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 4
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "identifier":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    .local v2, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_0

    .line 167
    return-object v2

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/DisplayWindowSettings;->updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    return-object v1

    .line 174
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 642
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v0

    .line 646
    .local v0, "port":B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 649
    .end local v0    # "port":B
    :cond_0
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 488
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    return v1

    .line 490
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 4
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 179
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    :goto_0
    return-object v1
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 5
    .param p1, "entry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayId"    # I

    .line 252
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v1

    goto :goto_0

    .line 253
    :cond_0
    move v1, v0

    :goto_0
    nop

    .line 256
    .local v1, "windowingMode":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v4, :cond_1

    .line 258
    return v3

    .line 261
    :cond_1
    if-nez v1, :cond_5

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    move v0, v3

    .line 265
    .local v0, "forceDesktopMode":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_4

    .line 266
    :cond_3
    goto :goto_1

    .line 267
    :cond_4
    move v2, v3

    :goto_1
    move v1, v2

    .line 269
    .end local v0    # "forceDesktopMode":Z
    :cond_5
    return v1
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    const-string v0, "identifier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 539
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 540
    return-void
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 512
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    move-object v0, v2

    .line 513
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    const-string v2, "windowingMode"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 515
    const-string v2, "userRotationMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 517
    const-string v2, "userRotation"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 519
    const-string v2, "forcedWidth"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 520
    const-string v2, "forcedHeight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 521
    const-string v2, "forcedDensity"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 522
    const-string v2, "forcedScalingMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 524
    const-string v2, "removeContentMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 526
    const-string v2, "shouldShowWithInsecureKeyguard"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 528
    const-string v2, "shouldShowSystemDecors"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 529
    const-string v2, "shouldShowIme"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 530
    const-string v2, "fixedToUserRotation"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 531
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v0    # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 534
    return-void
.end method

.method private readSettings()V
    .locals 11

    .line 421
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 425
    .local v2, "stream":Ljava/io/InputStream;
    nop

    .line 426
    const/4 v3, 0x0

    .line 428
    .local v3, "success":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 429
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 431
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    if-ne v6, v8, :cond_8

    .line 440
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 441
    .local v5, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 442
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_6

    .line 443
    :cond_2
    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    .line 444
    goto :goto_1

    .line 447
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 449
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 450
    :cond_4
    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 451
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 453
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <display-settings>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 453
    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 458
    :cond_6
    const/4 v3, 0x1

    .line 472
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v6    # "type":I
    if-nez v3, :cond_7

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 478
    :goto_3
    goto/16 :goto_4

    .line 477
    :catch_0
    move-exception v0

    .line 479
    goto/16 :goto_4

    .line 437
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_8
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/wm/DisplayWindowSettings;
    throw v5
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/wm/DisplayWindowSettings;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 469
    :catch_1
    move-exception v4

    .line 470
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_9

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_9
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 467
    :catch_2
    move-exception v4

    .line 468
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_a

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_a
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 465
    :catch_3
    move-exception v4

    .line 466
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_b

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_b
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    .line 463
    :catch_4
    move-exception v4

    .line 464
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_c

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_c
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    .line 461
    :catch_5
    move-exception v4

    .line 462
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_d

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_d
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    .line 459
    :catch_6
    move-exception v4

    .line 460
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 472
    nop

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_e

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_e
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_3

    .line 480
    :goto_4
    return-void

    .line 472
    :goto_5
    if-nez v3, :cond_f

    .line 473
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 476
    :cond_f
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 478
    goto :goto_6

    .line 477
    :catch_7
    move-exception v1

    .line 479
    :goto_6
    throw v0

    .line 422
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "success":Z
    :catch_8
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "No existing display settings, starting empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private removeEntry(Landroid/view/DisplayInfo;)Z
    .locals 5
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 635
    .local v0, "removed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    or-int/2addr v0, v3

    .line 636
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    .line 637
    return v0
.end method

.method private updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 3
    .param p1, "entry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 188
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    .line 189
    .local v0, "newEntry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-object v0
.end method

.method private writeSettings()V
    .locals 11

    .line 555
    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v4}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    .local v4, "stream":Ljava/io/OutputStream;
    nop

    .line 562
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 563
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 564
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    const-string v7, "identifier"

    iget v9, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 573
    .local v7, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    const-string v9, "name"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 576
    const-string v9, "windowingMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    :cond_0
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 579
    const-string v9, "userRotationMode"

    .line 580
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 579
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    :cond_1
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 583
    const-string v9, "userRotation"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    :cond_2
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 586
    const-string v9, "forcedWidth"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    const-string v9, "forcedHeight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    :cond_3
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 590
    const-string v9, "forcedDensity"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    :cond_4
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_5

    .line 593
    const-string v9, "forcedScalingMode"

    .line 594
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 593
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    :cond_5
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 597
    const-string v9, "removeContentMode"

    .line 598
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 597
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    :cond_6
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 601
    const-string v9, "shouldShowWithInsecureKeyguard"

    .line 602
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 601
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_7
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 605
    const-string v9, "shouldShowSystemDecors"

    .line 606
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 605
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    :cond_8
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 609
    const-string v9, "shouldShowIme"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    :cond_9
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_a

    .line 612
    const-string v9, "fixedToUserRotation"

    .line 613
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 612
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    :cond_a
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    nop

    .end local v7    # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    goto/16 :goto_0

    .line 618
    :cond_b
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v0, v4, v6}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 624
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 625
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 556
    .end local v4    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 557
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method private writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "changedEntry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 543
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettings()V

    .line 550
    return-void
.end method


# virtual methods
.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 381
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 382
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 385
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 387
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    .line 388
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v5

    .line 387
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 390
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 393
    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 397
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 398
    return-void
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 287
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 288
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 289
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    return v2

    .line 290
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    const/4 v2, 0x2

    return v2

    .line 295
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 273
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 274
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 275
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    return v2
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "fixedToUserRotation"    # I

    .line 245
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 246
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 247
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 248
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 249
    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"    # I
    .param p3, "userId"    # I

    .line 218
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    .line 219
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "densityString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 222
    return-void

    .line 225
    .end local v0    # "densityString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 226
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 227
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 228
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 229
    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 232
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 239
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 240
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 241
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 242
    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 203
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    .line 204
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 205
    .local v0, "sizeString":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    return-void

    .line 210
    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 211
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 212
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 213
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 214
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 215
    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 301
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 302
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 303
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 304
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 305
    return-void
.end method

.method setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 369
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 370
    const-string v0, "WindowManager"

    const-string v1, "Default display should show IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 375
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 376
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 377
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 378
    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 344
    const-string v0, "WindowManager"

    const-string v1, "Default display should show system decors"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 349
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 350
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 351
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 352
    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 317
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 318
    const-string v0, "WindowManager"

    const-string v1, "Public display can\'t be allowed to show content when locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 323
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 324
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 325
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 326
    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotationMode"    # I
    .param p3, "rotation"    # I

    .line 195
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 196
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 197
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 198
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 199
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 200
    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 279
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 280
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 281
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 282
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 283
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 284
    return-void
.end method

.method shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 355
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 361
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 362
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_1

    .line 363
    const/4 v2, 0x0

    return v2

    .line 365
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 335
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 336
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_1

    .line 337
    const/4 v2, 0x0

    return v2

    .line 339
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 308
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 309
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 310
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_0

    .line 311
    const/4 v2, 0x0

    return v2

    .line 313
    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 413
    const/4 v0, 0x1

    return v0

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

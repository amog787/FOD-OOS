.class final Lcom/android/server/display/PersistentDataStore$StableDeviceValues;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StableDeviceValues"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/PersistentDataStore$1;

    .line 518
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 518
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 3

    .line 523
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 552
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 554
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StableDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StableDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 536
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 537
    .local v0, "outerDepth":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6180369c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x3fc079e9

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string/jumbo v3, "stable-display-width"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "stable-display-height"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v5

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_2

    .line 543
    :cond_3
    invoke-static {p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    goto :goto_2

    .line 540
    :cond_4
    invoke-static {p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 541
    nop

    .line 544
    :goto_2
    goto :goto_0

    .line 547
    :cond_5
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    if-lez v0, :cond_0

    .line 561
    const-string/jumbo v0, "stable-display-width"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const-string/jumbo v0, "stable-display-height"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    :cond_0
    return-void
.end method

.method public setDisplaySize(Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Point;

    .line 527
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 529
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 530
    const/4 v0, 0x1

    return v0
.end method

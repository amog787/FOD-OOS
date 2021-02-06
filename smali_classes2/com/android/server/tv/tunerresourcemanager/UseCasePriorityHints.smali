.class public Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "UseCasePriorityHints.java"


# static fields
.field private static final DEBUG:Z

.field private static final INVALID_PRIORITY_VALUE:I = -0x1

.field private static final INVALID_USE_CASE:I = -0x1

.field private static final NS:Ljava/lang/String;

.field private static final PATH_TO_VENDOR_CONFIG_XML:Ljava/lang/String; = "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

.field private static final TAG:Ljava/lang/String; = "UseCasePriorityHints"


# instance fields
.field private mDefaultBackground:I

.field private mDefaultForeground:I

.field mPriorityHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field mVendorDefinedUseCase:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "UseCasePriorityHints"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    .line 61
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return-void
.end method

.method private addNewUseCasePriority(III)V
    .locals 2
    .param p1, "useCase"    # I
    .param p2, "fgPriority"    # I
    .param p3, "bgPriority"    # I

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 202
    .local v0, "priorities":[I
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method private static formatTypeToNum(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 207
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "useCaseName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "USE_CASE_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "USE_CASE_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "USE_CASE_LIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "USE_CASE_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "USE_CASE_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v6

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 220
    return v6

    .line 218
    :cond_1
    const/16 v1, 0x1f4

    return v1

    .line 216
    :cond_2
    const/16 v1, 0x190

    return v1

    .line 214
    :cond_3
    const/16 v1, 0x12c

    return v1

    .line 212
    :cond_4
    const/16 v1, 0xc8

    return v1

    .line 210
    :cond_5
    const/16 v1, 0x64

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34bcc93b -> :sswitch_4
        0x16873572 -> :sswitch_3
        0x48d65bc3 -> :sswitch_2
        0x48d97154 -> :sswitch_1
        0x76aab968 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPredefinedUseCase(I)Z
    .locals 1
    .param p0, "useCase"    # I

    .line 225
    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 197
    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private readUseCase(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "config"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 145
    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "name":Ljava/lang/String;
    const-string v3, "useCaseDefault"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "bgPriority"

    const-string v5, "fgPriority"

    if-eqz v3, :cond_1

    .line 150
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 151
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 153
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_1
    const-string v3, "useCasePreDefined"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    const-string v3, "type"

    invoke-static {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->formatTypeToNum(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    .line 156
    .local v3, "useCase":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 157
    const-string v2, "UseCasePriorityHints"

    const-string v4, "Wrong predefined use case name given in the vendor config."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    nop

    .line 161
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    .line 162
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    .line 160
    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 164
    sget-object v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    .end local v3    # "useCase":I
    :cond_3
    const-string v3, "useCaseVendor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    const-string v3, "id"

    invoke-direct {p0, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    .line 167
    .restart local v3    # "useCase":I
    nop

    .line 168
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    .line 169
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    .line 167
    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 170
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 172
    sget-object v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v3    # "useCase":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 177
    :cond_5
    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 183
    const/4 v0, 0x1

    .line 184
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 188
    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 191
    :goto_1
    goto :goto_0

    .line 194
    :cond_2
    return-void

    .line 181
    .end local v0    # "depth":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method getBackgroundPriority(I)I
    .locals 2
    .param p1, "useCase"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 75
    :cond_0
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return v0
.end method

.method getForegroundPriority(I)I
    .locals 2
    .param p1, "useCase"    # I

    .line 65
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    return v0
.end method

.method isDefinedUseCase(I)Z
    .locals 2
    .param p1, "useCase"    # I

    .line 79
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isPredefinedUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parse()V
    .locals 5

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "UseCasePriorityHints"

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 95
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse vendor file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading vendor file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 99
    :cond_0
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "no vendor priority configuration available. Using default priority"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const/16 v1, 0xb4

    const/16 v2, 0x64

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 103
    const/16 v1, 0x1c2

    const/16 v2, 0xc8

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 104
    const/16 v1, 0x1e0

    const/16 v2, 0x12c

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 105
    const/16 v1, 0x1ea

    const/16 v2, 0x190

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 106
    const/16 v1, 0x258

    const/16 v2, 0x1f4

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 108
    :goto_1
    return-void
.end method

.method protected parseInternal(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 118
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 119
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readUseCase(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 128
    .local v1, "useCase":I
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 129
    .local v3, "priorities":[I
    sget-boolean v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{defaultFg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultBg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UseCasePriorityHints"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{useCase="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", fg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "useCase":I
    .end local v3    # "priorities":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

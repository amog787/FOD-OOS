.class Lcom/android/server/blob/BlobAccessMode;
.super Ljava/lang/Object;
.source "BlobAccessMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;,
        Lcom/android/server/blob/BlobAccessMode$AccessType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_PRIVATE:I = 0x1

.field public static final ACCESS_TYPE_PUBLIC:I = 0x2

.field public static final ACCESS_TYPE_SAME_SIGNATURE:I = 0x4

.field public static final ACCESS_TYPE_WHITELIST:I = 0x8


# instance fields
.field private mAccessType:I

.field private final mWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;
    .locals 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    .line 169
    .local v0, "blobAccessMode":Lcom/android/server/blob/BlobAccessMode;
    const-string/jumbo v1, "t"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, "accessType":I
    iput v1, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 173
    .local v2, "depth":I
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wl"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string/jumbo v3, "p"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "ct"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    .line 177
    .local v4, "certificate":[B
    invoke-virtual {v0, v3, v4}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 178
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "certificate":[B
    goto :goto_0

    .line 180
    :cond_1
    return-object v0
.end method


# virtual methods
.method allow(Lcom/android/server/blob/BlobAccessMode;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/blob/BlobAccessMode;

    .line 68
    iget v0, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    iget v1, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 72
    return-void
.end method

.method allowPackageAccess(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B

    .line 83
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 84
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method allowPublicAccess()V
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 76
    return-void
.end method

.method allowSameSignatureAccess()V
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 80
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/blob/BlobAccessMode;

    iget v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    const-string v3, "ACCESS_TYPE_"

    invoke-static {v1, v3, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v0, "Whitelisted pkgs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, " (Empty)"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    invoke-virtual {v2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 151
    :goto_1
    return-void
.end method

.method getAccessType()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return v0
.end method

.method getNumWhitelistedPackages()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "committerPackage"    # Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v0, p3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    return v1

    .line 116
    :cond_1
    iget v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 117
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 119
    .local v3, "packageIdentifier":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    iget-object v4, v3, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 120
    invoke-virtual {v0, p2, v4, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    return v1

    .line 117
    .end local v3    # "packageIdentifier":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B

    .line 96
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPublicAccessAllowed()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSameSignatureAccessAllowed()Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    const-string/jumbo v1, "t"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    const/4 v2, 0x0

    const-string/jumbo v3, "wl"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    iget-object v4, p0, Lcom/android/server/blob/BlobAccessMode;->mWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 158
    .local v4, "packageIdentifier":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    iget-object v5, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "p"

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    const-string v6, "ct"

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 160
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    .end local v4    # "packageIdentifier":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method

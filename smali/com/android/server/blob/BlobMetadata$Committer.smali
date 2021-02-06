.class final Lcom/android/server/blob/BlobMetadata$Committer;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Committer"
.end annotation


# instance fields
.field public final blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

.field public final commitTimeMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blobAccessMode"    # Lcom/android/server/blob/BlobAccessMode;
    .param p4, "commitTimeMs"    # J

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 627
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 628
    iput-wide p4, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 629
    return-void
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Committer;
    .locals 11
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    const-string/jumbo v0, "p"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "u"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 659
    .local v7, "uid":I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 660
    const-string v1, "cmt"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    .line 661
    :cond_0
    const-wide/16 v1, 0x0

    move-wide v5, v1

    :goto_0
    nop

    .line 663
    .local v5, "commitTimeMs":J
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 664
    .local v8, "depth":I
    const/4 v1, 0x0

    move-object v9, v1

    .line 665
    .local v9, "blobAccessMode":Lcom/android/server/blob/BlobAccessMode;
    :cond_1
    :goto_1
    invoke-static {p0, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-static {p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    move-result-object v9

    goto :goto_1

    .line 670
    :cond_2
    if-nez v9, :cond_3

    .line 671
    const-string v1, "BlobStore"

    const-string v2, "blobAccessMode should be available"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v1, 0x0

    return-object v1

    .line 674
    :cond_3
    new-instance v10, Lcom/android/server/blob/BlobMetadata$Committer;

    move-object v1, v10

    move-object v2, v0

    move v3, v7

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    return-object v10
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-wide v1, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/blob/BlobStoreUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v0, "accessMode:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 640
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v0, p1}, Lcom/android/server/blob/BlobAccessMode;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 641
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 642
    return-void
.end method

.method getCommitTimeMs()J
    .locals 2

    .line 632
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    return-wide v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "p"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 646
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    const-string/jumbo v1, "u"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 647
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    const-string v2, "cmt"

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 649
    const/4 v0, 0x0

    const-string v1, "am"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v2, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 651
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    return-void
.end method

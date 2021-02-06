.class Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TheLog"
.end annotation


# instance fields
.field private final mBuffer:[B

.field private mChangeCount:J

.field private mEnd:I

.field private mLatestTime:J

.field private final mReadWriteTempBuffer:[B

.field private mStart:I

.field private mStartTime:J

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

.field private final mTempBuffer:[B

.field private final mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;
    .param p2, "translator"    # Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .param p3, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/16 v0, 0x9

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 717
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 732
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 738
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 745
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 750
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 755
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getLogSize()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 756
    .local v0, "logSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 758
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    .line 759
    iput-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 763
    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;)V

    invoke-virtual {p3, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V

    .line 768
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WakeLockLog$TheLog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;
    .param p1, "x1"    # I

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->removeTagIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 702
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/WakeLockLog$TheLog;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 702
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    return-object v0
.end method

.method private getAvailableSpace()I
    .locals 3

    .line 970
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    goto :goto_0

    .line 971
    :cond_0
    if-ge v0, v1, :cond_1

    sub-int v2, v1, v0

    goto :goto_0

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v0

    .line 970
    :goto_0
    return v2
.end method

.method private isBufferEmpty()Z
    .locals 2

    .line 1001
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeSpace(I)Z
    .locals 2
    .param p1, "spaceNeeded"    # I

    .line 954
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 955
    const/4 v0, 0x0

    return v0

    .line 960
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_1

    .line 961
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->removeOldestItem()V

    goto :goto_0

    .line 963
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 4
    .param p1, "index"    # I
    .param p2, "timeReference"    # J
    .param p4, "entryToSet"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 1014
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1015
    .local v1, "indexIntoMainBuffer":I
    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v1, v3, :cond_0

    .line 1016
    goto :goto_1

    .line 1018
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v0

    .line 1013
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method private removeOldestItem()V
    .locals 6

    .line 979
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    return-void

    .line 985
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    .line 989
    .local v0, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    .line 990
    .local v1, "size":I
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 991
    iget-wide v2, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 992
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 993
    return-void
.end method

.method private removeTagIndex(I)V
    .locals 9
    .param p1, "tagIndex"    # I

    .line 914
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    return-void

    .line 918
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 919
    .local v0, "readIndex":I
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 920
    .local v1, "timeReference":J
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 921
    .local v3, "reusableEntryInstance":Lcom/android/server/power/WakeLockLog$LogEntry;
    :goto_0
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, v4, :cond_3

    .line 922
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v4

    .line 926
    .local v4, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    if-nez v4, :cond_1

    .line 927
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry is unreadable - Unexpected @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    goto :goto_1

    .line 930
    :cond_1
    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v5, p1, :cond_2

    .line 933
    iput-object v6, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 934
    invoke-direct {p0, v0, v4, v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V

    .line 939
    :cond_2
    iget-wide v1, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 940
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v5

    .line 941
    .local v5, "entryByteSize":I
    add-int v6, v0, v5

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v7, v7

    rem-int v0, v6, v7

    .line 942
    .end local v4    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v5    # "entryByteSize":I
    goto :goto_0

    .line 943
    :cond_3
    :goto_1
    return-void
.end method

.method private writeBytesAt(I[BI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .line 1050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1051
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1052
    .local v1, "indexIntoMainBuffer":I
    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    .line 1050
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p3, "timeReference"    # J

    .line 1031
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 1032
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 1039
    :cond_0
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 787
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 793
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 794
    return-void

    .line 795
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 799
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 800
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 803
    :cond_2
    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    if-gtz v0, :cond_3

    goto :goto_0

    .line 810
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->makeSpace(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 811
    return-void

    .line 819
    :cond_4
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 824
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 825
    iget-wide v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 827
    iget-object v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-wide v2, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-static {v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V

    .line 828
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 829
    return-void

    .line 804
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log entry size is out of expected range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
    .locals 1
    .param p1, "tempEntry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ">;"
        }
    .end annotation

    .line 841
    new-instance v0, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    return-object v0
.end method

.method getUsedBufferSize()I
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

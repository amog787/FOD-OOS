.class public Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfoSave"
.end annotation


# instance fields
.field private mInAllRequestTime:J

.field private midentityHashCode:Ljava/lang/String;

.field private mpackageName:Ljava/lang/String;

.field private mrequesterName:Ljava/lang/String;

.field private mstartRequestTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    .line 526
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->midentityHashCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    iput-object p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->midentityHashCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    .line 526
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mrequesterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    iput-object p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mrequesterName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    .line 526
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mstartRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    .param p1, "x1"    # J

    .line 526
    iput-wide p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mstartRequestTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    .line 526
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mInAllRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    .param p1, "x1"    # J

    .line 526
    iput-wide p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mInAllRequestTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    .line 526
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mpackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    iput-object p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mpackageName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mpackageName:Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->midentityHashCode:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mrequesterName:Ljava/lang/String;

    .line 536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mstartRequestTime:J

    .line 537
    iput-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->mInAllRequestTime:J

    .line 538
    return-void
.end method

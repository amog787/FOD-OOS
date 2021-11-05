.class public final synthetic Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;->INSTANCE:Lcom/android/server/pm/-$$Lambda$jJA7F7L-4w56WZDbW9UayzZEbFw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/server/pm/PackageManagerService$ScanPartition;

    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-direct {v0, p1}, Lcom/android/server/pm/PackageManagerService$ScanPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    return-object v0
.end method

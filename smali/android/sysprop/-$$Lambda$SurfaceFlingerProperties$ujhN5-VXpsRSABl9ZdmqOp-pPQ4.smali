.class public final synthetic Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;->INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$ujhN5-VXpsRSABl9ZdmqOp-pPQ4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/sysprop/SurfaceFlingerProperties;->lambda$display_primary_green$1(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

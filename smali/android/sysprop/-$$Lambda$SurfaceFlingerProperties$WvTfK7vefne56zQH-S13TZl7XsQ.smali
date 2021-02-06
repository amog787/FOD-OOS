.class public final synthetic Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;->INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$WvTfK7vefne56zQH-S13TZl7XsQ;

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

    invoke-static {p1}, Landroid/sysprop/SurfaceFlingerProperties;->lambda$display_primary_red$0(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->lambda$new$1(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

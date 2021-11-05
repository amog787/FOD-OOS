.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;

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

    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

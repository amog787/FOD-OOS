.class public final synthetic Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result p1

    return p1
.end method

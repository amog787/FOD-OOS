.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

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

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$hasSecureWindowOnScreen$21(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

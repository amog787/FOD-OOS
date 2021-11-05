.class public final synthetic Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;

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

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result p1

    return p1
.end method

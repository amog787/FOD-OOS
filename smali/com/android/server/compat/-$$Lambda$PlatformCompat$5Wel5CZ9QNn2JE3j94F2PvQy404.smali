.class public final synthetic Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;

    invoke-direct {v0}, Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;-><init>()V

    sput-object v0, Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;->INSTANCE:Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->lambda$listUIChanges$1(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p1

    return-object p1
.end method

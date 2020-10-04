.class public final synthetic Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

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

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamicVisible()Z

    move-result p1

    return p1
.end method

.class public final synthetic Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;

    invoke-direct {v0}, Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;-><init>()V

    sput-object v0, Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;->INSTANCE:Landroid/net/shared/-$$Lambda$InitialConfiguration$58qOz8A9XDsHfGLzFKkSY-aJR6w;

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

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->lambda$58qOz8A9XDsHfGLzFKkSY-aJR6w(Landroid/net/LinkAddress;)Z

    move-result p1

    return p1
.end method

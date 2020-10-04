.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$verifyStatesInner$14(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

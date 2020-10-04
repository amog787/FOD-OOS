.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;

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

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$handleLocaleChanged$6(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

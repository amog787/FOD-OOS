.class public final synthetic Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

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

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p1}, Lcom/android/server/wm/WindowProcessListener;->updateServiceConnectionActivities()V

    return-void
.end method

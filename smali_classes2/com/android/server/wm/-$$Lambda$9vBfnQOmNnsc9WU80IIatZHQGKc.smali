.class public final synthetic Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method

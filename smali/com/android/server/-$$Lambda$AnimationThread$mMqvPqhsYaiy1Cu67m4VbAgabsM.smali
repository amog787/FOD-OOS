.class public final synthetic Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;->INSTANCE:Lcom/android/server/-$$Lambda$AnimationThread$mMqvPqhsYaiy1Cu67m4VbAgabsM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/AnimationThread;->lambda$dispose$0()V

    return-void
.end method

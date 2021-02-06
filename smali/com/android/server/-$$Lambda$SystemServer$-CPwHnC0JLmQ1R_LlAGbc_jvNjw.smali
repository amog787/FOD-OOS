.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/SystemServer;->lambda$-CPwHnC0JLmQ1R_LlAGbc_jvNjw(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p1

    return p1
.end method

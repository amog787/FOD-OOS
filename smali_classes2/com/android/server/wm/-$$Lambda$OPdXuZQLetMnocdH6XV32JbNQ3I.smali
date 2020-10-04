.class public final synthetic Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSystemDirectoryForUser(I)Ljava/io/File;
    .locals 0

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

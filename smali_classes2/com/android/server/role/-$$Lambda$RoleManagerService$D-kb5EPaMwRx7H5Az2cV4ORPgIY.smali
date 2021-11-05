.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/ByteArrayOutputStream;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$0:Ljava/io/ByteArrayOutputStream;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$1:Landroid/content/pm/PackageManagerInternal;

    iput p3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$2:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$0:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$1:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;->f$2:I

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/role/RoleManagerService;->lambda$computeComponentStateHash$2(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.class public Lorg/zzf/core/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/zzf/core/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " select max(_ID) from asw_table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "select aurl , type , smsnum , timer from aswprocedure where pc_which_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/zzf/core/d/d;

    invoke-direct {v2}, Lorg/zzf/core/d/d;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/zzf/core/d/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/zzf/core/d/d;->b(I)V

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/zzf/core/d/d;->b(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/zzf/core/d/d;->a(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public static a()Lorg/zzf/core/b/a;
    .locals 1

    sget-object v0, Lorg/zzf/core/b/a;->a:Lorg/zzf/core/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/b/a;

    invoke-direct {v0}, Lorg/zzf/core/b/a;-><init>()V

    sput-object v0, Lorg/zzf/core/b/a;->a:Lorg/zzf/core/b/a;

    :cond_0
    sget-object v0, Lorg/zzf/core/b/a;->a:Lorg/zzf/core/b/a;

    return-object v0
.end method

.method private a(Lorg/zzf/core/d/d;ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "aurl"

    invoke-virtual {p1}, Lorg/zzf/core/d/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lorg/zzf/core/d/d;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "smsnum"

    invoke-virtual {p1}, Lorg/zzf/core/d/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timer"

    invoke-virtual {p1}, Lorg/zzf/core/d/d;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pc_which_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "aswprocedure"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "aswprocedure"

    const-string v2, "pc_which_id = ? "

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " select _ID , filter_info , filter_port from asw_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    new-instance v3, Lorg/zzf/core/d/e;

    invoke-direct {v3}, Lorg/zzf/core/d/e;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/e;->a(I)V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/e;->c(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/e;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zzf/core/d/e;->d()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lorg/zzf/core/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/e;->a(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v1, "lock"

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public a(Landroid/content/Context;Lorg/zzf/core/d/e;)V
    .locals 5

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/zzf/core/d/e;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "asw_table"

    const-string v3, "_ID = ? "

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p2}, Lorg/zzf/core/d/e;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/b/a;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public a(Lorg/zzf/core/d/e;Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "filter_info"

    invoke-virtual {p1}, Lorg/zzf/core/d/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filter_port"

    invoke-virtual {p1}, Lorg/zzf/core/d/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "asw_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0, v1}, Lorg/zzf/core/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    invoke-virtual {p1}, Lorg/zzf/core/d/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/zzf/core/d/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/d;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v2, v1}, Lorg/zzf/core/b/a;->a(Lorg/zzf/core/d/d;ILandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "aswprocedure"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method
